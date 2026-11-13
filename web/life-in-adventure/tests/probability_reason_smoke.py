"""Explain missing stat-check inputs using the reported Battle #4 encounter."""
import unittest
from playwright.sync_api import expect
import game_mode_smoke as companion


class ProbabilityReasonBrowserTests(unittest.TestCase):
    setUpClass=classmethod(companion.GameModeBrowserTests.setUpClass.__func__)
    tearDownClass=classmethod(companion.GameModeBrowserTests.tearDownClass.__func__)
    setUp=companion.GameModeBrowserTests.setUp
    tearDown=companion.GameModeBrowserTests.tearDown
    start=companion.GameModeBrowserTests.start
    open_sidebar=companion.GameModeBrowserTests.open_sidebar
    panel=companion.GameModeBrowserTests.panel
    active=companion.GameModeBrowserTests.active
    saved=companion.GameModeBrowserTests.saved
    encounter=companion.GameModeBrowserTests.encounter

    def configured(self,traits_complete=False,intelligence='10',difficulty='normal'):
        def extra():
            self.page.locator('#gs7').fill(intelligence)
            for key in [12,13,14]:self.page.locator('#gs'+str(key)).fill('10')
            self.page.locator('#gameTraitsComplete').set_checked(traits_complete)
            self.page.locator('#gameDifficulty').select_option(difficulty)
        self.start(extra);self.panel('combat')
        self.page.locator('#runCombatLevel').fill('1')
        self.page.locator('#runCombatKnown').check()
        self.page.get_by_role('button',name='Salvar equipamento e calcular',exact=True).click()
        self.encounter(4,'EventBattle')

    def test_confirmed_equipment_with_incomplete_traits_explains_the_block_and_recovers_without_manual_skills(self):
        self.page.set_viewport_size({'width':390,'height':844})
        self.configured()
        card=self.page.locator('.game-choice').first
        missing=card.locator('[data-game-probability-missing]').first
        expect(missing).to_contain_text('lista completa de traços')
        expect(missing).to_contain_text('Informei todos os meus traços')
        expect(card.locator('[data-game-outcome-probability]')).to_have_count(0)
        self.open_sidebar();self.page.locator('#gameExperience').select_option('direct')
        missing=self.page.locator('[data-direct-choice="0"] [data-game-probability-missing]').first
        expect(missing).to_contain_text('lista completa de traços')
        self.assertLessEqual(self.page.evaluate('document.documentElement.scrollWidth'),390)
        missing.get_by_role('button',name='Conferir ficha',exact=True).click()
        expect(self.page.locator('#gameTraitsComplete')).to_be_focused()
        self.page.locator('#gameTraitsComplete').check()
        self.page.locator('#gameCorrectionForm input[required]').check()
        self.page.get_by_role('button',name='Salvar correção',exact=True).click()
        self.panel('companion')
        probabilities=self.page.locator('[data-direct-choice="0"] [data-game-outcome-probability]')
        expect(probabilities.nth(0)).to_contain_text('35%')
        expect(probabilities.nth(1)).to_contain_text('65%')
        self.assertEqual(self.active()['state']['abilities'],{})
        self.assertEqual(self.active()['selectedEvent'],'EventBattle:4')
        self.assertEqual(self.active()['state']['catalog']['monster'],[])

    def test_missing_intelligence_identifies_the_attribute_instead_of_guessing_zero(self):
        self.configured(traits_complete=True,intelligence='')
        card=self.page.locator('.game-choice').first
        expect(card.locator('[data-game-probability-missing]').first).to_contain_text('Inteligência')
        expect(card.locator('[data-game-outcome-probability]')).to_have_count(0)

    def test_unknown_hard_mode_level_is_reported_even_with_confirmed_equipment_and_traits(self):
        self.configured(traits_complete=True,difficulty='hard')
        card=self.page.locator('.game-choice').first
        expect(card.locator('[data-game-probability-missing]').first).to_contain_text('nível do modo difícil')
        expect(card.locator('[data-game-outcome-probability]')).to_have_count(0)


if __name__=='__main__':unittest.main(verbosity=2)
