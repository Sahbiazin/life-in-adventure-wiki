"""Policy controls and probability-based guidance in the manual companion."""
import unittest
from playwright.sync_api import expect
import game_mode_smoke as companion


class PlanningBrowserTests(unittest.TestCase):
    setUpClass = classmethod(companion.GameModeBrowserTests.setUpClass.__func__)
    tearDownClass = classmethod(companion.GameModeBrowserTests.tearDownClass.__func__)
    setUp = companion.GameModeBrowserTests.setUp
    tearDown = companion.GameModeBrowserTests.tearDown
    start = companion.GameModeBrowserTests.start
    open_sidebar = companion.GameModeBrowserTests.open_sidebar
    panel = companion.GameModeBrowserTests.panel
    saved = companion.GameModeBrowserTests.saved
    active = companion.GameModeBrowserTests.active
    encounter = companion.GameModeBrowserTests.encounter
    side_action = companion.GameModeBrowserTests.side_action
    result = companion.GameModeBrowserTests.result
    save_result = companion.GameModeBrowserTests.save_result

    def complete_run(self):
        def extra():
            for key in [7, 12, 13, 14]:
                self.page.locator('#gs'+str(key)).fill('10')
            self.page.locator('#gameTraitsComplete').check()
            self.page.locator('#gameInventoryComplete').check()
        self.start(extra)
        self.panel('combat')
        self.page.locator('#runCombatLevel').fill('1')
        self.page.locator('#runCombatKnown').check()
        self.page.get_by_role('button',name='Salvar equipamento e calcular',exact=True).click()
        self.panel('companion')

    def test_success_policy_defaults_to_sixty_and_persists_without_changing_the_sheet(self):
        self.page.set_viewport_size({'width':390,'height':844})
        self.complete_run()
        before=self.active()
        self.panel('goals')
        expect(self.page.locator('#gameMinSuccess')).to_have_value('60')
        self.page.locator('#gameMinSuccess').fill('75')
        self.page.get_by_role('button',name='Salvar critério',exact=True).click()
        expect(self.page.locator('#gameMessage')).to_contain_text('Critério salvo')
        after=self.active()
        self.assertEqual(after['policy']['minSuccessProbability'],.75)
        self.assertEqual(after['state'],before['state'])
        self.assertEqual(after['cursor'],before['cursor'])
        self.page.reload(wait_until='networkidle')
        self.panel('goals')
        expect(self.page.locator('#gameMinSuccess')).to_have_value('75')
        self.assertLessEqual(self.page.evaluate('document.documentElement.scrollWidth'),390)

    def test_attribute_probabilities_are_the_same_in_both_experiences_and_do_not_record_a_result(self):
        self.complete_run();self.encounter(222,'EventNormal')
        card=self.page.locator('.game-choice').first
        probabilities=card.locator('[data-game-outcome-probability]')
        expect(probabilities.first).to_contain_text('Chance calculada com a ficha')
        technical=probabilities.all_text_contents()
        before=self.active()
        self.open_sidebar();self.page.locator('#gameExperience').select_option('direct')
        direct=self.page.locator('[data-direct-choice="0"] [data-game-outcome-probability]').all_text_contents()
        self.assertEqual(technical,direct)
        self.assertEqual(self.active()['state'],before['state'])
        self.assertEqual(self.active()['cursor'],before['cursor'])
        self.assertEqual(self.active()['state']['catalog']['monster'],[])

    def test_missing_attribute_stays_unknown_instead_of_showing_zero_percent(self):
        self.start(lambda:self.page.locator('#gs5').fill(''))
        self.encounter(222,'EventNormal')
        card=self.page.locator('.game-choice').first
        expect(card.locator('[data-game-outcome-probability]')).to_have_count(0)
        expect(card).to_contain_text('Probabilidade final não calculada')

    def test_observed_power_is_anchored_only_after_confirmation_and_survives_unrelated_corrections(self):
        self.complete_run()
        self.side_action('edit-state')
        self.page.locator('#gameScoringDetails > summary').click()
        self.page.locator('#gsBattlePower').fill('120')
        self.page.locator('#gameCorrectionForm input[required]').check()
        before=self.active()
        self.page.get_by_role('button',name='Salvar correção',exact=True).click()
        expect(self.page.locator('#gameMessage')).to_contain_text('Confirme o poder')
        self.assertEqual(before,self.active())
        self.page.locator('#gameConfirmBattlePower').check()
        self.page.get_by_role('button',name='Salvar correção',exact=True).click()
        anchored=self.active()['state']['scoring']['battleAnchor']
        self.assertEqual(self.active()['state']['scoring']['battlePower'],120)
        self.assertIsInstance(anchored,str)
        self.side_action('edit-state')
        self.page.locator('#gs4').fill('150')
        self.page.locator('#gameCorrectionForm input[required]').check()
        self.page.get_by_role('button',name='Salvar correção',exact=True).click()
        self.assertEqual(self.active()['state']['scoring']['battleAnchor'],anchored)
        self.assertTrue(self.page.evaluate("() => {const r=AtlasGame.getActiveRun();return AtlasScore.anchor(r.state)===r.state.scoring.battleAnchor}"))
        self.side_action('edit-state')
        self.page.locator('#gs5').fill('20')
        self.page.locator('#gameCorrectionForm input[required]').check()
        self.page.get_by_role('button',name='Salvar correção',exact=True).click()
        self.assertEqual(self.active()['state']['scoring']['battleAnchor'],anchored)
        self.assertFalse(self.page.evaluate("() => {const r=AtlasGame.getActiveRun();return AtlasScore.anchor(r.state)===r.state.scoring.battleAnchor}"))

    def test_score_record_reference_and_hard_level_preserve_unknown_counters(self):
        self.complete_run()
        self.side_action('edit-state')
        self.page.locator('#gameScoringDetails > summary').click()
        self.page.locator('#gameScoringDetails .game-details > summary').filter(has_text='fórmula e contadores').click()
        self.page.locator('#gsHardLevel').fill('2')
        self.page.locator('#gameScoreCounters').fill('{"0": 2}')
        self.page.get_by_text('Referência das categorias de feitos',exact=True).click()
        expect(self.page.locator('[data-game-score-reference]')).to_contain_text('Inimigos Derrotados')
        expect(self.page.locator('[data-game-score-reference]')).to_contain_text('Azarado')
        self.page.locator('#gameCorrectionForm input[required]').check()
        self.page.get_by_role('button',name='Salvar correção',exact=True).click()
        scoring=self.active()['state']['scoring']
        self.assertEqual(scoring['hardLevel'],2)
        self.assertEqual(scoring['counters'],{'0':2})
        self.assertFalse(scoring['countersComplete'])

    def test_confirming_power_with_a_newly_completed_trait_list_anchors_the_saved_sheet(self):
        self.start()
        self.side_action('edit-state')
        self.page.locator('#gameScoringDetails > summary').click()
        self.page.locator('#gsBattlePower').fill('120')
        self.page.locator('#gameConfirmBattlePower').check()
        self.page.locator('#gameTraitsComplete').locator('xpath=ancestor::details[1]').locator('summary').first.click()
        self.page.locator('#gameTraitsComplete').check()
        self.page.locator('#gs3').locator('xpath=ancestor::details[1]').locator('summary').first.click()
        self.page.locator('#gs3').fill('0.1')
        self.page.locator('#gameCorrectionForm input[required]').check()
        self.page.get_by_role('button',name='Salvar correção',exact=True).click()
        self.assertTrue(self.active()['state']['traitsComplete'])
        self.assertTrue(self.page.evaluate("() => {const r=AtlasGame.getActiveRun();return AtlasScore.anchor(r.state)===r.state.scoring.battleAnchor}"))

    def test_confirmed_victory_adds_native_and_event_rewards_once_and_can_be_undone(self):
        def setup():
            for key in [7, 12, 13, 14]:
                self.page.locator('#gs'+str(key)).fill('10')
            self.page.locator('#gs2').fill('0')
            self.page.locator('#gameTraitsComplete').check()
        self.start(setup)
        self.encounter(80)
        self.result(2)
        self.save_result()
        self.assertEqual(self.active()['selectedEvent'],'EventTreasure:81')
        self.assertEqual(self.active()['state']['stats']['2'],0)
        self.assertEqual(self.active()['state']['stats']['4'],100)
        self.result(0)
        # Dwarf gives 1 EXP/8 gold before the event's 1 EXP/5 gold.
        expect(self.page.locator('#gs2')).to_have_value('2')
        expect(self.page.locator('#gs4')).to_have_value('113')
        self.assertEqual(self.active()['state']['stats']['4'],100)
        self.save_result()
        self.assertEqual(self.active()['state']['stats']['2'],2)
        self.assertEqual(self.active()['state']['stats']['4'],113)
        self.assertEqual(self.active()['state']['catalog']['monster'],[])
        self.side_action('undo')
        self.assertEqual(self.active()['selectedEvent'],'EventTreasure:81')
        self.assertEqual(self.active()['state']['stats']['2'],0)
        self.assertEqual(self.active()['state']['stats']['4'],100)
        self.side_action('redo')
        self.assertEqual(self.active()['state']['stats']['2'],2)
        self.assertEqual(self.active()['state']['stats']['4'],113)


if __name__=='__main__':
    unittest.main(verbosity=2)
