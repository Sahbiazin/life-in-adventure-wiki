"""Combat calculator and live-run integration, served below the Pages prefix."""
import unittest
from playwright.sync_api import expect
import game_mode_smoke as companion


class CombatBrowserTests(unittest.TestCase):
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
    encounter = companion.GameModeBrowserTests.encounter

    def calculator(self):
        self.page.goto(self.base+'#catalogo=combat', wait_until='networkidle')

    def record_label(self, key):
        return self.page.evaluate("key => {const r=ATLAS_DATA.catalogs.find(r=>r.key===key);return `${r.title} · #${r.id}`}", key)

    def complete_run(self):
        def extra():
            for key in [7, 12, 13, 14]:
                self.page.locator('#gs'+str(key)).fill('10')
            self.page.locator('#gameTraitsComplete').check()
        self.start(extra)

    def configure_run(self):
        self.panel('combat')
        self.page.locator('#runCombatLevel').fill('1')
        self.page.locator('#runCombatSlotmain').fill(self.record_label('item:0'))
        self.page.locator('#runCombatKnown').check()
        self.page.get_by_role('button', name='Salvar equipamento e calcular', exact=True).click()
        expect(self.page.locator('#gameMessage')).to_contain_text('Equipamento salvo')

    def test_calculator_search_equipment_traits_and_persistence(self):
        self.calculator()
        expect(self.page.locator('#combatRoot')).to_be_visible()
        expect(self.page.locator('#atlasCatalog')).to_be_hidden()
        before = self.page.locator('[data-combat-power]').inner_text()
        self.page.locator('#combatSlotmain').fill(self.record_label('item:0'))
        self.page.locator('#combatTraitPick').fill(self.record_label('trait:3'))
        self.page.locator('[data-combat-add-trait]').click()
        self.page.locator('#combatStatsMode').select_option('base')
        self.page.get_by_role('button', name='Calcular chances', exact=True).click()
        self.assertNotEqual(before, self.page.locator('[data-combat-power]').inner_text())
        self.page.locator('[data-combat-query]').fill('Entearvore')
        expect(self.page.locator('[data-combat-monster]')).to_have_count(1)
        expect(self.page.locator('[data-combat-monster="161"]')).to_contain_text('%')
        self.page.locator('[data-combat-monster="161"] details summary').click()
        expect(self.page.locator('[data-combat-monster="161"] details')).to_contain_text('Intervalo estatístico de 95%')
        expect(self.page.locator('[data-combat-monster="161"]')).to_contain_text('efeitos parcialmente simulados')
        self.page.reload(wait_until='networkidle')
        expect(self.page.locator('#combatSlotmain')).to_have_value(self.record_label('item:0'))
        expect(self.page.locator('#combatStatsMode')).to_have_value('base')
        self.assertIsNone(self.page.evaluate("localStorage.getItem('life-in-adventure:runs:v1')"))

    def test_invalid_equipment_does_not_replace_saved_setup_and_missing_stats_do_not_get_odds(self):
        self.calculator()
        self.page.locator('#combatSlotmain').fill(self.record_label('item:18'))
        self.page.locator('#combatSlotoff').fill(self.record_label('item:2'))
        self.page.get_by_role('button', name='Calcular chances', exact=True).click()
        expect(self.page.locator('.combat-message')).to_contain_text('duas mãos')
        self.assertIsNone(self.page.evaluate("localStorage.getItem('life-in-adventure:combat-calculator:v1')"))
        self.page.locator('#combatSlotoff').fill('')
        self.page.locator('#combatStat5').fill('')
        self.page.get_by_role('button', name='Calcular chances', exact=True).click()
        expect(self.page.locator('[data-combat-summary]')).to_contain_text('Força')
        expect(self.page.locator('.combat-chance').first).to_have_text('A conferir')

    def test_mobile_dark_theme_pagination_and_monster_details(self):
        self.page.set_viewport_size({'width':390,'height':844})
        self.calculator()
        self.page.locator('#themeToggle').click()
        self.page.locator('[data-combat-page="1"]').click()
        expect(self.page.locator('[data-combat-page-label]')).to_have_text('2 / 18')
        self.page.locator('[data-combat-query]').fill('Kior')
        expect(self.page.locator('[data-combat-monster="155"]')).to_be_visible()
        expect(self.page.locator('[data-combat-monster="155"]')).not_to_contain_text('NaN')
        self.assertLessEqual(self.page.evaluate('document.documentElement.scrollWidth'),390)
        self.page.locator('[data-combat-record="monster:155"]').click()
        expect(self.page.locator('#detailTitle')).to_contain_text('Kior')

    def test_effective_ability_adjustments_and_observed_components_are_used_when_sorting(self):
        self.calculator()
        self.page.locator('.combat-advanced > summary').click()
        self.page.locator('#combatAbilityPick').fill(self.record_label('ability:56:0'))
        self.page.locator('#combatAbilityLevel').fill('-2')
        self.page.locator('[data-combat-add-ability]').click()
        self.page.locator('.combat-advanced > summary').click()
        self.page.locator('#combatOverrideattack').fill('10000')
        self.page.locator('#combatOverridedefense').fill('10000')
        self.page.get_by_role('button',name='Calcular chances',exact=True).click()
        metrics=self.page.locator('#combatRoot .combat-metrics')
        expect(metrics).to_contain_text('10.000')
        expect(metrics).to_contain_text('0,8')
        self.page.locator('[data-combat-sort]').select_option('worst')
        expect(self.page.locator('[data-combat-monster]')).to_have_count(12)
        self.page.locator('[data-combat-query]').fill('#155')
        expect(self.page.locator('[data-combat-monster]')).to_have_count(1)
        expect(self.page.locator('[data-combat-monster]')).not_to_contain_text('NaN')

    def test_saved_run_configuration_uses_corrected_stats_instead_of_a_cached_sheet(self):
        self.complete_run();self.configure_run()
        before=self.page.locator('#gameCombatCalculator [data-combat-power]').inner_text()
        self.side_action('edit-state')
        self.page.locator('#gs6').fill('30')
        self.page.locator('#gameCorrectionForm input[required]').check()
        self.page.get_by_role('button',name='Salvar correção',exact=True).click()
        self.panel('combat')
        self.assertNotEqual(before,self.page.locator('#gameCombatCalculator [data-combat-power]').inner_text())
        self.assertEqual(self.active()['state']['combat']['equipment']['main']['id'],'0')
        self.assertEqual(self.active()['cursor'],2)

    def test_run_config_drives_current_and_future_combat_without_recording_a_victory(self):
        self.complete_run()
        self.encounter(360)
        expect(self.page.locator('.game-choice').first.locator('[data-game-combat-estimate]')).to_contain_text('equipamento confirmado')
        self.configure_run()
        self.assertEqual(self.active()['cursor'],1)
        self.panel('companion')
        estimates=self.page.locator('.game-choice').first.locator('[data-game-combat-estimate]')
        expect(estimates).to_contain_text('Entearvore')
        expect(estimates).to_contain_text('%')
        expect(estimates).to_contain_text('combate adiante')
        before=self.active()
        self.page.reload(wait_until='networkidle')
        expect(self.page.locator('[data-game-combat-estimate]').first).to_contain_text('%')
        self.assertEqual(before,self.active())
        self.encounter(80)
        self.assertEqual(self.active()['cursor'],1)
        expect(self.page.locator('[data-game-combat-estimate]').first).to_contain_text('Anão')
        self.assertEqual(self.active()['state']['catalog']['monster'],[])
        self.assertEqual(self.active()['state']['stats']['0'],10)
        self.assertEqual(self.active()['state']['items'],{})

    def test_direct_mode_uses_the_same_forecast_and_equipment_is_reversible(self):
        self.complete_run();self.configure_run();self.encounter(360)
        technical=self.page.locator('.game-choice').first.locator('[data-game-combat-estimate] .combat-chance').all_text_contents()
        self.open_sidebar();self.page.locator('#gameExperience').select_option('direct')
        direct=self.page.locator('[data-direct-choice="0"] [data-game-combat-estimate] .combat-chance').all_text_contents()
        self.assertEqual(technical,direct)
        self.assertGreater(len(direct),0)
        self.assertEqual(self.page.locator('[data-direct-choice="0"] [data-game-combat-estimate] details').count(),0)
        self.side_action('undo')
        expect(self.page.locator('[data-game-combat-estimate]').first).to_contain_text('equipamento confirmado')
        self.side_action('redo')
        expect(self.page.locator('[data-game-combat-estimate]').first).to_contain_text('%')

    def test_standalone_copy_is_independent_and_storage_denial_keeps_calculator_usable(self):
        self.complete_run();self.configure_run()
        before=self.active()
        self.page.locator('.topbar [data-view="combat"]').click()
        self.page.locator('[data-combat-copy]').click()
        expect(self.page.locator('#combatSlotmain')).to_have_value(self.record_label('item:0'))
        self.page.locator('#combatStat5').fill('40')
        self.page.get_by_role('button', name='Calcular chances', exact=True).click()
        self.assertEqual(before,self.active())
        self.page.evaluate("() => {Storage.prototype.setItem=()=>{throw new Error('denied')}}")
        self.page.get_by_role('button', name='Calcular chances', exact=True).click()
        expect(self.page.locator('#combatRoot .combat-message')).to_contain_text('apenas nesta visita')
        expect(self.page.locator('#combatRoot [data-combat-power]')).to_be_visible()


if __name__=='__main__':
    unittest.main(verbosity=2)
