"""Battle narrative interpolation in the Atlas, maps and phone companion."""
import unittest
from playwright.sync_api import expect
import game_mode_smoke as companion


class EventTextBrowserTests(unittest.TestCase):
    setUpClass = classmethod(companion.GameModeBrowserTests.setUpClass.__func__)
    tearDownClass = classmethod(companion.GameModeBrowserTests.tearDownClass.__func__)
    setUp = companion.GameModeBrowserTests.setUp
    tearDown = companion.GameModeBrowserTests.tearDown
    start = companion.GameModeBrowserTests.start
    open_sidebar = companion.GameModeBrowserTests.open_sidebar
    panel = companion.GameModeBrowserTests.panel
    active = companion.GameModeBrowserTests.active
    saved = companion.GameModeBrowserTests.saved
    encounter = companion.GameModeBrowserTests.encounter

    def atlas(self, ident):
        self.page.goto(self.base+'#evento=EventBattle%3A'+str(ident), wait_until='networkidle')

    def test_single_monster_is_named_in_details_results_and_the_continuation_with_raw_text_preserved(self):
        self.atlas(4)
        expect(self.page.locator('#overviewPanel > .narrative')).to_contain_text('Morcego Vampiro descendo')
        expect(self.page.locator('#overviewPanel .result-text').first).to_contain_text('Morcego Vampiro')
        expect(self.page.locator('#overviewPanel > .narrative')).not_to_contain_text('{0}')
        raw=self.page.locator('#overviewPanel > .raw-details')
        raw.locator('summary').click()
        expect(raw.locator('pre')).to_contain_text('{0}')
        self.atlas(5)
        expect(self.page.locator('#overviewPanel .result-text').first).to_contain_text('Morcego Vampiro')
        expect(self.page.locator('#overviewPanel .result-text').first).not_to_contain_text('{0}')

    def test_random_pool_names_and_plural_are_readable_in_mobile_details_and_maps(self):
        self.page.set_viewport_size({'width':390,'height':844})
        self.atlas(0)
        text=self.page.locator('#overviewPanel > .narrative')
        expect(text).to_contain_text('você vê monstros (Goblin ou Lobo-Cinzento) ferozmente')
        expect(text).not_to_contain_text('{0}')
        self.page.locator('#mapTab').click()
        expect(self.page.locator('#choiceMap svg')).not_to_contain_text('{0}')
        expect(self.page.locator('#choiceMap svg')).to_contain_text('Goblin ou Lobo-Cinzento')
        self.assertLessEqual(self.page.evaluate('document.documentElement.scrollWidth'),390)

    def test_both_game_experiences_and_the_complete_flow_use_names_without_changing_the_run(self):
        self.start()
        self.page.locator('#gameEventQuery').fill('Morcego Vampiro')
        self.page.locator('#gameEventCategory').select_option('EventBattle')
        expect(self.page.locator('#gameEventResults [data-key="EventBattle:4"]')).to_be_visible()
        self.assertEqual(self.active()['cursor'],0)
        self.encounter(4,'EventBattle')
        before=self.active()
        expect(self.page.locator('#gameEncounter > .game-narrative')).to_contain_text('Morcego Vampiro')
        expect(self.page.locator('#gameEncounter .game-outcome .game-narrative').first).to_contain_text('Morcego Vampiro')
        expect(self.page.locator('#gameFlow')).not_to_contain_text('{0}')
        self.open_sidebar();self.page.locator('#gameExperience').select_option('direct')
        expect(self.page.locator('#gameEncounter')).to_contain_text('Morcego Vampiro')
        expect(self.page.locator('#gameEncounter')).not_to_contain_text('{0}')
        self.assertEqual(before,self.active())

    def test_selecting_a_continuation_directly_still_resolves_its_monster(self):
        self.start();self.encounter(5,'EventBattle')
        expect(self.page.locator('#gameEncounter .game-outcome .game-narrative').first).to_contain_text('Morcego Vampiro')
        expect(self.page.locator('#gameFlow')).not_to_contain_text('{0}')
        self.assertEqual(self.active()['cursor'],0)


if __name__=='__main__':
    unittest.main(verbosity=2)
