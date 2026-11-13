"""Functional tests for the manual run companion, served under a Pages prefix."""
import json
import tempfile
import unittest
from pathlib import Path

from playwright.sync_api import expect
import browser_smoke as atlas_smoke

STORAGE = 'life-in-adventure:runs:v1'


class GameModeBrowserTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        atlas_smoke.WikiBrowserTests.setUpClass()
        cls.browser = atlas_smoke.WikiBrowserTests.browser
        cls.base = atlas_smoke.WikiBrowserTests.base

    @classmethod
    def tearDownClass(cls):
        atlas_smoke.WikiBrowserTests.tearDownClass()

    def setUp(self):
        self.context = self.browser.new_context(viewport={'width': 1440, 'height': 1000}, accept_downloads=True)
        self.page = self.context.new_page()
        self.errors = []
        self.page.on('pageerror', lambda e: self.errors.append(str(e)))

    def tearDown(self):
        self.assertEqual(self.errors, [])
        self.context.close()

    def start(self, extra=None):
        self.page.goto(self.base + '#catalogo=game', wait_until='networkidle')
        self.page.locator('#gameRunName').fill('Run de teste')
        for key, value in {'0': 10, '8': 10, '1': 5, '9': 5, '4': 100, '5': 10, '6': 10}.items():
            self.page.locator('#gs' + key).fill(str(value))
        if extra:
            extra()
        self.page.get_by_role('button', name='Criar run e definir objetivos').click()
        expect(self.page.locator('#gameMessage')).to_contain_text('Run criada')
        self.panel('companion')

    def open_sidebar(self, page=None):
        page = page or self.page
        if not page.locator('#gameSideNav').is_visible():
            page.locator('#sidebarToggle').click()
        expect(page.locator('#gameSideNav')).to_be_visible()

    def panel(self, name, page=None):
        page = page or self.page
        self.open_sidebar(page)
        page.locator(f'#gameSideNav [data-game-panel="{name}"]').click()

    def side_action(self, action, page=None):
        page = page or self.page
        self.open_sidebar(page)
        page.locator(f'#gameSideNav [data-game-action="{action}"]').click()

    def saved(self):
        return json.loads(self.page.evaluate('(key) => localStorage.getItem(key)', STORAGE))

    def active(self):
        saved = self.saved()
        return next(r for r in saved['runs'] if r['id'] == saved['activeId'])

    def gold_goal(self, page=None):
        page = page or self.page
        self.panel('goals', page)
        details = page.locator('#gameGoals > details')
        if details.get_attribute('open') is None:
            details.locator('summary').first.click()
        page.locator('#gameGoalType').select_option('gold')
        page.locator('#gameGoalAmount').fill('200')
        page.get_by_role('button', name='Adicionar objetivo', exact=True).click()
        self.panel('companion', page)

    def encounter(self, ident=346, category='EventTreasure'):
        self.panel('companion')
        self.page.locator('#gameEventQuery').fill('#' + str(ident))
        self.page.locator('#gameEventCategory').select_option(category)
        self.page.locator('#gameEventResults [data-game-action="select-event"]').first.click()
        expect(self.page.locator('#gameEncounter')).to_be_visible()

    def result(self, choice, result=0):
        button = self.page.locator(f'[data-game-action="review-result"][data-choice="{choice}"][data-result="{result}"]')
        card = button.locator('xpath=ancestor::details[contains(@class,"game-choice")]')
        if card.get_attribute('open') is None:
            card.locator('summary').first.click()
        button.click()
        expect(self.page.locator('#gameReview')).to_be_visible()

    def save_result(self):
        self.page.locator('#gameConfirmObservation').check()
        self.page.get_by_role('button', name='Salvar resultado observado').click()
        expect(self.page.locator('#gameMessage')).to_contain_text('Resultado observado salvo')

    def test_students_sequence_advances_with_linking_text_and_survives_undo_redo_reload(self):
        self.page.set_viewport_size({'width': 390, 'height': 844})
        self.start()
        self.encounter(552, 'EventNormal')
        expect(self.page.locator('#gameEncounter .attribute-test')).to_contain_text('Teste de Inteligência')
        self.result(0)
        self.save_result()
        self.assertEqual(self.active()['selectedEvent'], 'EventNormal:553')
        expect(self.page.locator('#gameEncounter h2')).to_have_text('Continuação do encontro')
        expect(self.page.locator('.game-continuation')).to_contain_text('Seria correto assumir que você é um aventureiro?')
        expect(self.page.locator('.game-choice > summary').first).to_contain_text('Eu sou')
        self.result(0)
        self.save_result()
        self.assertEqual(self.active()['selectedEvent'], 'EventNormal:554')
        self.page.reload(wait_until='networkidle')
        expect(self.page.locator('.game-choice > summary').first).to_contain_text('Eu vou te ajudar')
        self.result(0)
        self.save_result()
        self.assertEqual(self.active()['selectedEvent'], 'EventNormal:555')
        expect(self.page.locator('#gameEncounter')).to_contain_text('Distrái-os')
        expect(self.page.locator('#gameEncounter .attribute-test')).to_contain_text('Teste de Carisma')
        expect(self.page.locator('.game-continuation')).to_contain_text('Normal #552 → Normal #553 → Normal #554 → Normal #555')
        self.assertLessEqual(self.page.evaluate('document.documentElement.scrollWidth'), 390)
        self.side_action('undo')
        self.assertEqual(self.active()['selectedEvent'], 'EventNormal:554')
        self.side_action('redo')
        self.assertEqual(self.active()['selectedEvent'], 'EventNormal:555')
        self.assertEqual(self.active()['cursor'], 3)

    def test_self_return_rechecks_options_after_attribute_test(self):
        self.start()
        self.encounter(552, 'EventNormal')
        self.result(2, 0)
        expect(self.page.locator('#gameReview')).to_contain_text('eles devem estar sofrendo de ressaca')
        self.save_result()
        self.assertEqual(self.active()['selectedEvent'], 'EventNormal:552')
        self.assertEqual(self.active()['state']['states']['chainEventList']['628'], 1)
        expect(self.page.locator('.game-continuation')).to_contain_text('eles devem estar sofrendo de ressaca')
        card = self.page.locator('.game-choice').nth(2)
        card.locator('summary').first.click()
        expect(card).to_contain_text('Requisito não atendido pela ficha informada')
        self.assertEqual(self.active()['cursor'], 1)

    def test_failed_attribute_test_ends_only_the_encounter(self):
        self.start()
        self.encounter(222, 'EventNormal')
        expect(self.page.locator('#gameEncounter .attribute-test')).to_contain_text('Teste de Força')
        expect(self.page.locator('.game-outcome .eyebrow').nth(1)).to_contain_text('Falha')
        self.result(0, 1)
        self.save_result()
        self.assertIsNone(self.active()['selectedEvent'])
        self.assertEqual(self.active()['status'], 'active')
        self.assertEqual(self.active()['history'][0]['result'], 1)
        self.assertEqual(self.active()['state']['items'], {})
        expect(self.page.locator('#gameEventQuery')).to_be_visible()

    def test_combat_continuation_waits_for_the_observed_outcome(self):
        self.start()
        self.encounter(10, 'EventBattle')
        self.result(0)
        self.save_result()
        self.assertEqual(self.active()['selectedEvent'], 'EventBattle:11')
        expect(self.page.locator('#gameEncounter')).to_contain_text('o Atlas não escolhe vitória ou derrota')
        self.assertEqual(self.active()['cursor'], 1)
        self.assertEqual(self.active()['state']['pending'], [])
        expect(self.page.locator('[data-game-combat]')).to_contain_text('inimigo atual do encontro')
        self.assertEqual(self.page.locator('.game-recommended').count(), 0)
        self.result(0)
        self.save_result()
        self.assertIsNone(self.active()['selectedEvent'])
        self.assertEqual(self.active()['cursor'], 2)

    def test_future_contract_reward_guides_the_current_choice_without_applying_it(self):
        self.page.set_viewport_size({'width': 390, 'height': 844})
        def extra():
            self.page.locator('#gs12').fill('10')
            self.page.locator('#gameInventoryComplete').check()
        self.start(extra)
        self.gold_goal()
        self.encounter(466, 'EventNormal')
        expect(self.page.locator('.game-recommended > summary')).to_contain_text('Sim sou eu')
        plan = self.page.locator('.game-recommended .game-plan')
        plan.locator('summary').first.click()
        expect(plan).to_contain_text('Caminho avaliado até o fim')
        expect(plan).to_contain_text('Assinar o contrato')
        expect(plan).to_contain_text('Ouro: +80')
        self.assertEqual(self.active()['state']['stats']['4'], 100)
        self.assertEqual(self.active()['cursor'], 0)
        self.assertLessEqual(self.page.evaluate('document.documentElement.scrollWidth'), 390)
        plan.locator('[data-event="EventNormal:467"]').click()
        expect(self.page.locator('#eventDialog')).to_be_visible()
        expect(self.page.locator('#overviewPanel')).to_contain_text('Assinar o contrato')
        self.assertEqual(self.active()['cursor'], 0)
        self.page.locator('#closeDialog').click()
        self.page.goto(self.base + '#catalogo=game', wait_until='networkidle')
        self.result(0)
        expect(self.page.locator('#gs4')).to_have_value('100')
        self.save_result()
        self.assertEqual(self.active()['selectedEvent'], 'EventNormal:467')
        expect(self.page.locator('.game-recommended > summary')).to_contain_text('Assinar o contrato')
        self.result(0)
        expect(self.page.locator('#gs4')).to_have_value('180')
        self.save_result()
        self.assertEqual(self.active()['state']['stats']['4'], 180)
        self.assertEqual(self.active()['cursor'], 2)

    def test_combat_commands_pause_the_plan_without_a_false_best_choice(self):
        self.start()
        self.gold_goal()
        self.encounter(10, 'EventBattle')
        expect(self.page.locator('#gamePlanningStatus')).to_contain_text('Há caminhos sem comparação completa')
        self.assertEqual(self.page.locator('.game-recommended').count(), 0)
        plan = self.page.locator('.game-choice .game-plan').first
        plan.locator('summary').first.click()
        expect(plan).to_contain_text('Análise parcial')
        expect(plan).to_contain_text('inicia um combate')
        self.assertEqual(self.active()['cursor'], 0)
        self.assertEqual(self.active()['state']['stats']['4'], 100)

    def test_alignment_exact_value_changes_after_calling_guards_and_is_reversible(self):
        def extra():
            self.page.get_by_text('Valor numérico, se você souber', exact=True).click()
            self.page.locator('#gs3').fill('9')
        self.start(extra)
        self.panel('runs')
        expect(self.page.locator('.game-stat-row')).to_contain_text('Alinhamento: Neutro (9)')
        self.encounter(80, 'EventTreasure')
        self.result(1)
        expect(self.page.locator('#gameReview')).to_contain_text('Alinhamento: +1')
        expect(self.page.locator('#gs3')).to_have_value('10')
        expect(self.page.locator('#gameAlignmentHint')).to_contain_text('Justo (10)')
        self.save_result()
        self.assertEqual(self.active()['state']['stats']['3'], 10)
        self.page.reload(wait_until='networkidle')
        self.panel('runs')
        expect(self.page.locator('.game-stat-row')).to_contain_text('Justo (10)')
        self.side_action('undo')
        self.assertEqual(self.active()['state']['stats']['3'], 9)
        self.side_action('redo')
        self.assertEqual(self.active()['state']['stats']['3'], 10)
        self.side_action('edit-state')
        self.page.locator('#gs3').fill('-10')
        self.page.get_by_label('Estes são os valores que conferi no jogo', exact=True).check()
        self.page.get_by_role('button', name='Salvar correção', exact=True).click()
        self.panel('runs')
        expect(self.page.locator('.game-stat-row')).to_contain_text('Impuro (-10)')

    def test_alignment_name_keeps_an_interval_and_does_not_invent_a_number(self):
        self.page.set_viewport_size({'width':390,'height':844})
        self.start(lambda:self.page.locator('#gameAlignmentBand').select_option('neutral'))
        self.assertIsNone(self.active()['state']['stats']['3'])
        self.assertEqual(self.active()['state']['alignmentRange']['min'], -9)
        self.encounter(80, 'EventTreasure')
        self.result(1)
        expect(self.page.locator('#gs3')).to_have_value('')
        expect(self.page.locator('#gameAlignmentHint')).to_contain_text('Neutro ou Justo')
        self.assertLessEqual(self.page.evaluate('document.documentElement.scrollWidth'),390)
        self.save_result()
        self.assertIsNone(self.active()['state']['stats']['3'])
        self.assertEqual(self.active()['state']['alignmentRange']['min'], -8)
        self.page.reload(wait_until='networkidle')
        self.panel('runs')
        expect(self.page.locator('.game-stat-row')).to_contain_text('Neutro ou Justo')
        self.side_action('edit-state')
        self.page.locator('#gameAlignmentBand').select_option('moral')
        self.page.get_by_label('Estes são os valores que conferi no jogo', exact=True).check()
        self.page.get_by_role('button', name='Salvar correção', exact=True).click()
        self.assertIsNone(self.active()['state']['stats']['3'])
        self.assertEqual(self.active()['state']['alignmentRange']['min'],10)
        self.panel('runs')
        expect(self.page.locator('.game-stat-row')).to_contain_text('Justo · estimativa por faixa')

    def test_saved_runs_from_before_alignment_remain_usable_with_unknown_alignment(self):
        self.start();self.encounter();self.result(1);self.save_result()
        self.page.evaluate('''key=>{const saved=JSON.parse(localStorage.getItem(key));for(const r of saved.runs){for(const s of [r.state,...r.history.flatMap(h=>[h.before,h.after])]){delete s.stats['3'];delete s.alignmentRange;}}localStorage.setItem(key,JSON.stringify(saved));}''', STORAGE)
        self.page.reload(wait_until='networkidle')
        self.panel('runs')
        expect(self.page.locator('.game-stat-row')).to_contain_text('Alinhamento: Não informado')
        self.panel('runs')
        expect(self.page.locator('.game-stat-row')).to_contain_text('Ouro: 95')
        expect(self.page.locator('#gameWarning')).not_to_be_visible()
        self.side_action('undo')
        self.assertEqual(self.active()['state']['stats']['4'], 100)
        self.assertIsNone(self.active()['state']['stats']['3'])

    def test_setup_captures_real_inventory_traits_abilities_and_unknown_fields(self):
        def extra():
            self.page.locator('#gameItemPick').fill('Adaga · #0')
            self.page.locator('#gameItemAmount').fill('2')
            self.page.get_by_role('button', name='Adicionar / atualizar', exact=True).first.click()
            self.page.locator('#gameInventoryComplete').check()
            self.page.locator('#gameTraitPick').fill('Normal · #0')
            self.page.get_by_role('button', name='Adicionar traço', exact=True).click()
            self.page.locator('#gameTraitsComplete').check()
            self.page.locator('#gameAbilityPick').fill('Furtividade · #5 / 0')
            self.page.locator('#gameAbilityValue').fill('2')
            self.page.get_by_role('button', name='Adicionar / atualizar', exact=True).last.click()
        self.start(extra)
        state = self.active()['state']
        self.assertEqual(state['items'], {'0': 2})
        self.assertEqual(state['traits'], ['0'])
        self.assertEqual(state['abilities'], {'5': 2})
        self.assertIsNone(state['stats']['2'])
        self.assertTrue(state['inventoryComplete'])
        self.assertTrue(state['traitsComplete'])
        self.page.reload(wait_until='networkidle')
        self.panel('runs')
        expect(self.page.locator('.game-dashboard h2')).to_have_text('Run de teste')

    def test_goal_recommendation_review_actual_values_reload_undo_redo(self):
        self.start()
        self.gold_goal()
        self.encounter()
        expect(self.page.locator('.game-recommended > summary')).to_contain_text('Pagar apenas o meu')
        self.result(1)
        expect(self.page.locator('#gs4')).to_have_value('95')
        self.assertEqual(self.active()['state']['stats']['4'], 100)  # A preview must not mutate saved state.
        self.page.locator('#gs4').fill('94')
        self.page.locator('#gameObservationNote').fill('O jogo mostrou 94; registrei o valor observado.')
        self.save_result()
        self.assertEqual(self.active()['state']['stats']['4'], 94)
        self.page.reload(wait_until='networkidle')
        self.assertEqual(self.active()['state']['stats']['4'], 94)
        self.side_action('undo')
        self.assertEqual(self.active()['state']['stats']['4'], 100)
        self.side_action('redo')
        self.assertEqual(self.active()['state']['stats']['4'], 94)
        self.assertEqual(self.active()['cursor'], 1)

    def test_primary_score_objective_requires_score_data_even_with_gold_secondary(self):
        self.start()
        self.panel('goals')
        self.page.locator('#gameGoalType').select_option('score')
        self.page.get_by_role('button', name='Adicionar objetivo', exact=True).click()
        self.page.locator('#gameGoals > details > summary').click()
        self.gold_goal()
        self.encounter()
        expect(self.page.locator('#gameEncounter > .game-notice')).to_contain_text('Faltam dados de pontuação')
        self.assertEqual(self.page.locator('.game-recommended').count(), 0)
        self.panel('goals')
        self.page.locator('[data-game-action="promote-goal"]').click()
        self.panel('companion')
        expect(self.page.locator('.game-recommended > summary')).to_contain_text('Pagar apenas o meu')

    def test_combat_commands_are_interpreted_and_catalog_is_manual(self):
        self.start()
        self.encounter(10, 'EventBattle')
        self.result(0)
        expect(self.page.locator('#gameReview')).not_to_contain_text('Efeito não modelado: 6_1_0')
        expect(self.page.locator('[data-game-combat]')).to_contain_text('inimigo atual do encontro')
        self.assertEqual(self.active()['state']['catalog']['monster'], [])
        self.page.locator('#gs0').fill('7')
        self.page.locator('input[name="gameCatalogConfirm"][value="monster:0"]').check()
        self.save_result()
        state = self.active()['state']
        self.assertEqual(state['stats']['0'], 7)
        self.assertEqual(state['pending'], [])
        self.assertFalse(state['flagsUncertain'])
        self.assertIn('monster:0', state['catalog']['monster'])
        self.side_action('undo')
        self.assertEqual(self.active()['state']['stats']['0'], 10)
        self.assertEqual(self.active()['state']['catalog']['monster'], [])
        self.side_action('redo')
        self.assertEqual(self.active()['state']['stats']['0'], 7)
        self.assertEqual(self.active()['state']['pending'], [])

    def test_treasure_dwarf_combat_keeps_context_after_reload_without_granting_loot(self):
        self.page.set_viewport_size({'width':390,'height':844})
        self.start()
        self.encounter(80, 'EventTreasure')
        expect(self.page.locator('.game-outcome').nth(2)).to_contain_text('Iniciar combate')
        expect(self.page.locator('.game-outcome').nth(2)).to_contain_text('Anão')
        self.result(2)
        expect(self.page.locator('[data-game-combat]')).to_contain_text('Anão')
        expect(self.page.locator('#gameReview')).not_to_contain_text('Efeito não modelado: 6_0_87')
        self.save_result()
        self.assertEqual(self.active()['selectedEvent'],'EventTreasure:81')
        self.page.reload(wait_until='networkidle')
        expect(self.page.locator('[data-game-combat]')).to_contain_text('Anão')
        self.assertEqual(self.active()['state']['stats']['4'],100)
        self.assertEqual(self.active()['state']['items'],{})
        self.assertEqual(self.active()['state']['catalog']['monster'],[])
        self.assertFalse(self.active()['state']['flagsUncertain'])
        self.assertEqual(self.page.locator('.game-recommended').count(),0)
        self.assertLessEqual(self.page.evaluate('document.documentElement.scrollWidth'),390)
        self.side_action('undo')
        expect(self.page.locator('[data-game-combat]')).to_have_count(0)
        self.side_action('redo')
        expect(self.page.locator('[data-game-combat]')).to_contain_text('Anão')

    def test_accepting_the_village_job_warns_about_the_treant_before_recording_anything(self):
        self.page.set_viewport_size({'width':390,'height':844})
        def weak_character():
            self.page.locator('#gs5').fill('4')
            self.page.locator('#gs12').fill('4')
        self.start(weak_character)
        self.gold_goal()
        self.encounter(360)
        before=self.active()['state']
        card=self.page.locator('.game-choice').first
        expect(card.locator('summary').first).to_contain_text('Pode levar a combate')
        forecast=card.locator('[data-game-forecast]')
        expect(forecast).to_be_visible()
        expect(forecast).to_contain_text('Entearvore')
        expect(forecast).to_contain_text('saída sem combate')
        expect(forecast).to_contain_text('Teste de Carisma')
        expect(forecast).to_contain_text('Carisma na ficha usada: 4')
        expect(forecast).to_contain_text('O teste pode falhar')
        forecast.locator('details > summary').click()
        expect(forecast).to_contain_text('Exemplo de caminho sem combate')
        expect(forecast.locator('[data-game-future-ending]').first).to_contain_text('Ouro: +50')
        expect(forecast).to_contain_text('Saúde: -1')
        self.assertEqual(self.active()['state'],before)
        self.assertEqual(self.active()['cursor'],0)
        self.assertEqual(self.page.locator('.game-recommended').count(),0)
        self.assertLessEqual(self.page.evaluate('document.documentElement.scrollWidth'),390)
        forecast.locator('[data-event="EventTreasure:363"]').first.click()
        expect(self.page.locator('#detailId')).to_contain_text('0363')
        self.assertEqual(self.active()['selectedEvent'],'EventTreasure:360')
        self.assertEqual(self.active()['cursor'],0)

    def test_failed_treant_negotiation_keeps_the_peaceful_exit_and_does_not_grant_the_reward(self):
        self.start(lambda:self.page.locator('#gs12').fill('4'))
        self.encounter(360)
        for choice,next_key in [(0,'EventTreasure:361'),(0,'EventTreasure:362'),(0,'EventTreasure:363'),(0,'EventTreasure:363')]:
            self.result(choice);self.save_result()
            self.assertEqual(self.active()['selectedEvent'],next_key)
        self.result(1,2)
        expect(self.page.locator('#gameReview')).to_contain_text('recusando a conversar')
        self.save_result()
        self.assertEqual(self.active()['state']['stats']['4'],100)
        expect(self.page.locator('.game-choice').nth(1)).to_contain_text('Requisito não atendido')
        expect(self.page.locator('.game-choice').nth(3)).to_contain_text('Requisito da escolha atendido')
        self.result(3);self.save_result()
        self.assertIsNone(self.active()['selectedEvent'])
        self.assertEqual(self.active()['state']['stats']['0'],10)
        self.assertEqual(self.active()['state']['stats']['4'],100)
        self.assertEqual(self.active()['state']['pending'],[])
        self.assertEqual(self.active()['state']['catalog']['monster'],[])
        self.page.reload(wait_until='networkidle')
        self.side_action('undo')
        self.assertEqual(self.active()['selectedEvent'],'EventTreasure:363')
        self.assertEqual(self.active()['state']['states']['chainEventList']['616'],2)

    def test_different_result_is_saved_without_guessed_effects_and_notes_are_escaped(self):
        self.start()
        self.encounter()
        self.page.get_by_role('button', name='O resultado foi diferente / não está no Atlas').click()
        self.page.locator('#gs0').fill('8')
        note = '<img src=x onerror="window.badNote=true"> Resultado diferente no celular.'
        self.page.locator('#gameObservationNote').fill(note)
        self.save_result()
        run = self.active()
        self.assertEqual(run['history'][0]['type'], 'observation')
        self.assertIsNone(run['history'][0]['result'])
        self.assertEqual(run['state']['stats']['4'], 100)
        self.assertEqual(run['state']['stats']['0'], 8)
        self.panel('history')
        self.page.locator('#gameRunHistory > summary').click()
        self.page.locator('.game-history summary').first.click()
        expect(self.page.locator('.game-history')).to_contain_text(note)
        self.assertEqual(self.page.locator('.game-history img').count(), 0)
        self.assertIsNone(self.page.evaluate('window.badNote'))

    def test_export_restore_and_incompatible_import_preserve_existing_runs(self):
        self.start()
        self.gold_goal()
        self.encounter()
        self.result(1)
        self.save_result()
        original = self.active()
        self.panel('runs')
        with self.page.expect_download() as download_info:
            self.page.get_by_role('button', name='Exportar run', exact=True).click()
        with tempfile.TemporaryDirectory(prefix='lia-run-export-') as folder:
            file = Path(folder) / 'run.json'
            download_info.value.save_as(file)
            payload = json.loads(file.read_text())
        self.assertEqual(payload['run']['history'][0]['eventKey'], 'EventTreasure:346')
        bad = json.loads(json.dumps(payload));bad['run']['gameVersion'] = 'other'
        self.page.locator('#gameImport').set_input_files({'name': 'bad.json', 'mimeType': 'application/json', 'buffer': json.dumps(bad).encode()})
        expect(self.page.locator('#gameMessage')).to_contain_text('incompatível')
        self.assertEqual(len(self.saved()['runs']), 1)
        self.assertEqual(self.active()['id'], original['id'])
        self.page.locator('#gameImport').set_input_files({'name': 'run.json', 'mimeType': 'application/json', 'buffer': json.dumps(payload).encode()})
        expect(self.page.locator('#gameMessage')).to_contain_text('Backup importado')
        self.assertEqual(len(self.saved()['runs']), 2)
        self.assertNotEqual(self.active()['id'], original['id'])
        self.assertEqual(self.active()['state'], original['state'])
        self.assertEqual(self.active()['history'], original['history'])

    def test_multiple_runs_can_copy_confirmed_catalog_without_overwriting_old_progress(self):
        self.start()
        self.panel('catalog')
        self.page.locator('details').filter(has=self.page.locator('#gameCatalogForm')).locator('summary').first.click()
        self.page.locator('#gameCatalogTarget').fill('Adaga · #0')
        self.page.get_by_role('button', name='Confirmar no catálogo', exact=True).click()
        original_id = self.active()['id']
        self.panel('runs')
        self.page.get_by_role('button', name='Nova run', exact=True).click()
        self.page.locator('#gameRunName').fill('Segunda run')
        self.page.get_by_role('button', name='Criar run e definir objetivos').click()
        self.assertEqual(len(self.saved()['runs']), 2)
        self.assertIn('item:0', self.active()['state']['catalog']['item'])
        self.page.locator('#gameRunSwitcher').select_option(original_id)
        self.assertEqual(self.active()['cursor'], 1)
        self.assertEqual(self.active()['name'], 'Run de teste')

    def test_mobile_layout_and_atlas_shortcut(self):
        self.page.set_viewport_size({'width': 390, 'height': 844})
        self.start()
        self.assertLessEqual(self.page.evaluate('document.documentElement.scrollWidth'), 390)
        self.page.goto(self.base + '#evento=EventTreasure%3A346', wait_until='networkidle')
        self.page.locator('#useInRun').click()
        expect(self.page.locator('#gameEncounter')).to_be_visible()
        self.assertEqual(self.active()['selectedEvent'], 'EventTreasure:346')
        self.assertIn('catalogo=game', self.page.url)
        self.assertLessEqual(self.page.evaluate('document.documentElement.scrollWidth'), 390)
        self.gold_goal()
        self.result(1)
        self.assertLessEqual(self.page.locator('#gameReview').evaluate('(el) => el.scrollWidth'), 358)
        self.page.locator('#gs4').fill('93')
        self.page.get_by_role('navigation').get_by_role('button', name='Itens', exact=True).click()
        self.page.get_by_role('navigation').get_by_role('button', name='Modo de Jogo', exact=True).click()
        expect(self.page.locator('#gs4')).to_have_value('93')
        self.save_result()
        self.assertEqual(self.active()['state']['stats']['4'], 93)

    def test_storage_denied_keeps_run_usable_and_explicitly_requests_backup(self):
        self.context.add_init_script("Storage.prototype.getItem = () => {throw new Error('denied')}; Storage.prototype.setItem = () => {throw new Error('denied')}")
        self.start()
        expect(self.page.locator('#gameWarning')).to_contain_text('memória desta visita')
        self.gold_goal()
        self.encounter()
        self.result(1)
        self.save_result()
        self.panel('runs')
        expect(self.page.locator('.game-stat-row')).to_contain_text('Ouro: 95')
        expect(self.page.get_by_role('button', name='Exportar run', exact=True)).to_be_enabled()

    def test_corrupted_saved_data_is_preserved_while_new_run_remains_exportable(self):
        self.page.goto(self.base, wait_until='networkidle')
        self.page.evaluate('(key) => localStorage.setItem(key, "{broken-run")', STORAGE)
        self.start()
        expect(self.page.locator('#gameWarning')).to_contain_text('dados antigos')
        self.assertEqual(self.page.evaluate('(key) => localStorage.getItem(key)', STORAGE), '{broken-run')
        expect(self.page.get_by_role('button', name='Exportar os dados antigos para recuperação')).to_be_visible()
        self.gold_goal()
        self.encounter()
        self.result(1)
        self.save_result()
        self.panel('runs')
        expect(self.page.locator('.game-stat-row')).to_contain_text('Ouro: 95')
        self.assertEqual(self.page.evaluate('(key) => localStorage.getItem(key)', STORAGE), '{broken-run')

    def test_other_tab_changes_cannot_be_overwritten_by_stale_state(self):
        self.start()
        other = self.context.new_page()
        other.on('pageerror', lambda e: self.errors.append(str(e)))
        other.goto(self.base + '#catalogo=game', wait_until='networkidle')
        self.side_action('edit-state')
        self.page.locator('#gs4').fill('88')
        self.page.get_by_label('Estes são os valores que conferi no jogo', exact=True).check()
        self.page.get_by_role('button', name='Salvar correção', exact=True).click()
        expect(other.locator('#gameConflict')).to_be_visible()
        self.panel('runs', other)
        other.get_by_role('button', name='Nova run', exact=True).click()
        other.get_by_role('button', name='Criar run e definir objetivos').click()
        expect(other.locator('#gameMessage')).to_contain_text('outra aba')
        self.assertEqual(len(self.saved()['runs']), 1)
        other.get_by_role('button', name='Carregar dados da outra aba').click()
        self.panel('runs', other)
        expect(other.locator('.game-stat-row')).to_contain_text('Ouro: 88')
        expect(other.locator('#gameConflict')).not_to_be_visible()

    def test_ended_run_can_resume_and_notebook_favorites_are_not_erased(self):
        self.start()
        self.page.goto(self.base + '#evento=EventTreasure%3A346', wait_until='networkidle')
        self.page.locator('#favoriteToggle').click()
        self.page.locator('#closeDialog').click()
        self.page.get_by_role('navigation').get_by_role('button', name='Modo de Jogo', exact=True).click()
        self.panel('runs')
        self.page.get_by_role('button', name='Encerrar run', exact=True).click()
        self.assertEqual(self.active()['status'], 'ended')
        expect(self.page.locator('#gameEventQuery')).not_to_be_visible()
        self.page.get_by_role('button', name='Reabrir run', exact=True).click()
        self.assertEqual(self.active()['status'], 'active')
        self.panel('companion')
        expect(self.page.locator('#gameEventQuery')).to_be_visible()
        notebook = json.loads(self.page.evaluate("localStorage.getItem('life-in-adventure:notebook:v1')"))
        self.assertIn('EventTreasure:346', notebook['favorites'])


if __name__ == '__main__':
    unittest.main(verbosity=2)
