"""Run navigation, direct recording and inline flow integration in the browser."""
import unittest

from playwright.sync_api import expect
import game_mode_smoke as companion


class GameUiBrowserTests(unittest.TestCase):
    setUpClass = classmethod(companion.GameModeBrowserTests.setUpClass.__func__)
    tearDownClass = classmethod(companion.GameModeBrowserTests.tearDownClass.__func__)
    setUp = companion.GameModeBrowserTests.setUp
    tearDown = companion.GameModeBrowserTests.tearDown
    start = companion.GameModeBrowserTests.start
    open_sidebar = companion.GameModeBrowserTests.open_sidebar
    panel = companion.GameModeBrowserTests.panel
    side_action = companion.GameModeBrowserTests.side_action
    saved = companion.GameModeBrowserTests.saved
    active = companion.GameModeBrowserTests.active
    gold_goal = companion.GameModeBrowserTests.gold_goal
    encounter = companion.GameModeBrowserTests.encounter

    def experience(self, value):
        self.open_sidebar()
        self.page.locator('#gameExperience').select_option(value)
        if self.page.viewport_size['width'] <= 900 and self.page.locator('#sidebarClose').is_visible():
            self.page.locator('#sidebarClose').click()

    def quick_result(self, choice, result=0):
        button = self.page.locator(f'#gameEncounter [data-game-action="quick-result"][data-choice="{choice}"][data-result="{result}"]')
        card = button.locator('xpath=ancestor::details[contains(@class,"game-choice")]')
        if card.count() and card.get_attribute('open') is None:
            card.locator('summary').first.click()
        button.click()
        expect(self.page.locator('#gameReview')).to_have_count(0)
        expect(self.page.locator('#gameConfirmObservation')).to_have_count(0)

    def test_sidebar_panels_keep_sheet_goals_and_history_out_of_the_phone_companion(self):
        self.page.set_viewport_size({'width': 390, 'height': 844})
        self.start()
        expect(self.page.locator('#gameEventQuery')).to_be_visible()
        for selector in ['#gameGoals', '.game-dashboard', '#gameRunHistory', '#gameCatalogForm']:
            expect(self.page.locator(selector)).not_to_be_visible()
        self.panel('goals')
        expect(self.page.locator('#gameGoals')).to_be_visible()
        expect(self.page.locator('#gameEventQuery')).not_to_be_visible()
        self.gold_goal()
        self.assertEqual(len(self.active()['goals']), 1)
        expect(self.page.locator('#gameGoals')).not_to_be_visible()
        self.panel('sheet')
        expect(self.page.locator('.game-stat-row')).to_contain_text('Ouro: 100')
        expect(self.page.locator('#gameEventQuery')).not_to_be_visible()
        self.panel('history')
        expect(self.page.locator('#gameRunHistory')).to_be_visible()
        self.panel('companion')
        expect(self.page.locator('#gameEventQuery')).to_be_visible()
        self.assertEqual(self.active()['cursor'], 0)
        self.assertLessEqual(self.page.evaluate('document.documentElement.scrollWidth'), 390)

    def test_switching_experience_is_persistent_and_preserves_the_run_and_future_recommendation(self):
        def setup():
            self.page.locator('#gs12').fill('10')
            self.page.locator('#gameInventoryComplete').check()
        self.start(setup)
        self.gold_goal()
        self.encounter(466, 'EventNormal')
        expect(self.page.locator('.game-recommended > summary')).to_contain_text('Sim sou eu')
        before = self.active()
        self.experience('direct')
        expect(self.page.locator('#gameEncounter .game-plan')).to_have_count(0)
        expect(self.page.locator('#gameEncounter .raw-details')).to_have_count(0)
        expect(self.page.locator('#gameEncounter .game-recommended')).to_contain_text('Sim sou eu')
        self.assertEqual(self.active(), before)
        self.page.reload(wait_until='networkidle')
        expect(self.page.locator('#gameEncounter [data-game-action="quick-result"]').first).to_be_visible()
        self.open_sidebar()
        expect(self.page.locator('#gameExperience')).to_have_value('direct')
        self.assertEqual(self.active(), before)
        self.experience('technical')
        expect(self.page.locator('#gameEncounter .game-plan').first).to_be_visible()
        self.assertEqual(self.active(), before)

    def test_direct_recording_applies_only_the_observed_stage_without_review_and_keeps_undo(self):
        def setup():
            self.page.locator('#gs12').fill('10')
            self.page.locator('#gameInventoryComplete').check()
        self.start(setup)
        self.gold_goal()
        self.encounter(466, 'EventNormal')
        self.experience('direct')
        expect(self.page.locator('#gameEncounter .game-recommended')).to_contain_text('Sim sou eu')
        self.assertEqual(self.active()['state']['stats']['4'], 100)
        self.quick_result(0)
        self.assertEqual(self.active()['selectedEvent'], 'EventNormal:467')
        self.assertEqual(self.active()['cursor'], 1)
        self.assertEqual(self.active()['state']['stats']['4'], 100)
        expect(self.page.locator('#gameFlow [data-flow-event="EventNormal:467"]')).to_have_count(1)
        expect(self.page.locator('#gameEncounter .game-recommended')).to_contain_text('Assinar o contrato')
        expect(self.page.locator('#gameEncounter .game-recommended .game-direct-effects')).to_contain_text('Ouro +80')
        self.quick_result(0)
        self.assertIsNone(self.active()['selectedEvent'])
        self.assertEqual(self.active()['cursor'], 2)
        self.assertEqual(self.active()['state']['stats']['4'], 180)
        self.side_action('undo')
        self.assertEqual(self.active()['selectedEvent'], 'EventNormal:467')
        self.assertEqual(self.active()['state']['stats']['4'], 100)
        self.side_action('redo')
        self.assertEqual(self.active()['state']['stats']['4'], 180)
        self.page.reload(wait_until='networkidle')
        self.assertEqual(self.active()['cursor'], 2)
        self.assertEqual(self.active()['state']['stats']['4'], 180)

    def test_direct_unknown_effects_stay_pending_and_do_not_unlock_the_monster_catalog(self):
        self.start()
        self.encounter(362)
        self.experience('direct')
        before = self.active()['state']
        self.quick_result(3)
        run = self.active()
        self.assertEqual(run['selectedEvent'], 'EventTreasure:364')
        self.assertEqual(run['cursor'], 1)
        self.assertTrue(run['state']['flagsUncertain'])
        self.assertTrue(any('25_3_1' in issue for issue in run['state']['pending']))
        self.assertIsNone(run['state']['stats']['0'])
        self.assertIsNone(run['state']['stats']['1'])
        self.assertEqual({k:v for k,v in run['state']['stats'].items() if k not in ['0','1']}, {k:v for k,v in before['stats'].items() if k not in ['0','1']})
        self.assertEqual(run['state']['items'], before['items'])
        self.assertEqual(run['state']['catalog']['monster'], [])
        self.assertEqual(self.page.locator('.game-recommended').count(), 0)
        self.page.reload(wait_until='networkidle')
        self.assertEqual(self.active()['state'], run['state'])

    def test_direct_combat_marks_health_unknown_and_waits_for_the_observed_outcome(self):
        self.start()
        self.encounter(80)
        self.experience('direct')
        self.quick_result(2)
        run=self.active()
        self.assertEqual(run['selectedEvent'],'EventTreasure:81')
        self.assertEqual(run['cursor'],1)
        self.assertIsNone(run['state']['stats']['0'])
        self.assertIsNone(run['state']['stats']['1'])
        self.assertTrue(any('saúde e sanidade' in issue for issue in run['state']['pending']))
        self.assertFalse(run['state']['flagsUncertain'])
        self.assertEqual(run['state']['stats']['4'],100)
        self.assertEqual(run['state']['catalog']['monster'],[])
        self.assertEqual(self.page.locator('.game-recommended').count(),0)
        self.side_action('undo')
        self.assertEqual(self.active()['selectedEvent'],'EventTreasure:80')
        self.assertEqual(self.active()['state']['stats']['0'],10)
        self.assertEqual(self.active()['state']['stats']['1'],5)
        self.assertEqual(self.active()['state']['pending'],[])
        self.side_action('redo')
        self.assertIsNone(self.active()['state']['stats']['0'])
        self.quick_result(0)
        self.assertEqual(self.active()['cursor'],2)
        self.assertIsNone(self.active()['selectedEvent'])
        self.assertEqual(self.active()['state']['stats']['4'],105)
        self.assertEqual(self.active()['state']['catalog']['monster'],[])
        self.assertEqual(self.active()['history'][1]['choice'],0)
        self.side_action('undo');self.side_action('undo')
        self.assertEqual(self.active()['state']['stats']['0'],10)
        self.assertEqual(self.active()['state']['stats']['1'],5)
        self.assertEqual(self.active()['state']['stats']['4'],100)

    def test_direct_mode_still_warns_about_the_future_treant_and_does_not_apply_future_rewards(self):
        self.page.set_viewport_size({'width':390, 'height':844})
        def weak():
            self.page.locator('#gs5').fill('4')
            self.page.locator('#gs12').fill('4')
        self.start(weak)
        self.gold_goal()
        self.encounter(360)
        self.experience('direct')
        card = self.page.locator('#gameEncounter [data-direct-choice="0"]')
        expect(card).to_contain_text('Aceitar')
        expect(card).to_contain_text('Entearvore')
        expect(card).to_contain_text('Ouro +50')
        expect(card).to_contain_text('Carisma')
        expect(card).to_contain_text('sem combate')
        self.assertEqual(self.active()['cursor'], 0)
        self.assertEqual(self.active()['state']['stats']['4'], 100)
        self.quick_result(0)
        self.assertEqual(self.active()['selectedEvent'], 'EventTreasure:361')
        self.assertEqual(self.active()['state']['stats']['4'], 100)
        self.assertEqual(self.active()['state']['catalog']['monster'], [])
        self.assertLessEqual(self.page.evaluate('document.documentElement.scrollWidth'),390)

    def test_inline_flow_contains_all_treant_stages_choices_and_results_without_advancing_the_run(self):
        self.page.set_viewport_size({'width':390, 'height':844})
        self.start()
        self.encounter(360)
        flow = self.page.locator('#gameFlow')
        expect(flow).to_be_visible()
        for ident in [360,361,362,363,364]:
            expect(flow.locator(f'.ef-event[data-flow-event="EventTreasure:{ident}"]')).to_have_count(1)
        expect(flow.locator('.ef-choice')).to_have_count(16)
        expect(flow.locator('.ef-result')).to_have_count(23)
        before = self.active()
        flow.locator('.ef-event[data-flow-event="EventTreasure:363"]').click()
        expect(self.page.locator('#detailId')).to_contain_text('0363')
        self.assertEqual(self.active(), before)
        self.page.locator('#closeDialog').click()
        flow.locator('[data-ef-action="zoom-in"]').click()
        flow.locator('[data-ef-action="fit"]').click()
        self.assertEqual(self.active(), before)
        self.assertLessEqual(self.page.evaluate('document.documentElement.scrollWidth'),390)


if __name__ == '__main__':
    unittest.main(verbosity=2)
