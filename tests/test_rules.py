import sys
import json
import unittest
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
from decode_rules import base_weight, decode_required, decode_reward, exact_neutral_probabilities


class RulesTests(unittest.TestCase):
    def test_gold_gate_and_quest_state(self):
        rule = decode_required('5_612_0|1_4_5')
        self.assertEqual(rule['operator'], 'AND')
        self.assertEqual([p['comparison'] for p in rule['conditions']], ['==', '>='])

    def test_or_sentinel_and_strict_less(self):
        rule = decode_required('-1|2_4_5|5_612_9')
        self.assertEqual(rule['operator'], 'OR')
        self.assertEqual(rule['conditions'][0]['comparison'], '<')

    def test_unknown_is_not_guessed(self):
        self.assertFalse(decode_required('35_43_1')['fully_decoded'])
        self.assertFalse(decode_reward('6_9_42')['fully_decoded'])
        self.assertFalse(decode_required('21_43')['fully_decoded'])

    def test_combat_modes_are_control_commands_not_rewards_or_automatic_wins(self):
        for raw, monster, factor, state in [('6_0_87', 87, 1, None),
                ('6_2_42', 42, .5, 1), ('6_3_42', 42, 1.5, 2), ('6_4_42', 42, 1, 4),
                ('6_1_0', None, 1, None), ('6_1_2', None, .5, 1), ('6_1_3', None, 1.5, 2)]:
            rule = decode_reward(raw)
            self.assertTrue(rule['fully_decoded'], raw)
            effect = rule['effects'][0]
            self.assertEqual(effect['operation'], 'start_combat')
            self.assertEqual((effect['monster_id'], effect['combat_power_factor'], effect['initial_state']), (monster, factor, state))
            self.assertTrue(effect['requires_observation'])
        self.assertEqual(decode_reward('6_0_86.5')['effects'][0]['monster_id'], 86)
        for raw in ['6_1_4', '6_0_-1', '6_5_87', '6_x_87', '6_--1_87', '6_0_nan', '6_0_1e30']:
            self.assertFalse(decode_reward(raw)['fully_decoded'], raw)

    def test_item_requirements_and_transfers_have_separate_semantics(self):
        have = decode_required('8_42_1')['conditions'][0]
        lack = decode_required('10_42_1')['conditions'][0]
        self.assertEqual((have['domain'], have['index'], have['comparison']), ('inventory', 42, '>='))
        self.assertEqual(lack['comparison'], '<')
        effects = decode_reward('3_181_1|4_42_1')['effects']
        self.assertEqual([e['operation'] for e in effects], ['add_item', 'remove_item'])
        self.assertEqual([e['index'] for e in effects], [181, 42])

    def test_item_counts_use_convert_to_int32_and_nonpositive_transfers_do_nothing(self):
        self.assertEqual(decode_required('8_42_1.5')['conditions'][0]['quantity'], 2)
        self.assertEqual(decode_reward('3_42_2.5')['effects'][0]['quantity'], 2)
        self.assertEqual(decode_reward('4_42_-1')['effects'][0]['quantity'], 0)

    def test_weight_not_percent(self):
        self.assertEqual(base_weight('13')['constant'], 13)
        self.assertEqual(base_weight('1|0_14_1')['dynamic_terms'][0]['effective_user_data_index'], 14)

    def test_neutral_tavern_outcomes(self):
        rows = [{'required': '', 'type': 2, 'chance': '1'} for _ in range(5)]
        self.assertEqual(exact_neutral_probabilities(rows), ['1/5'] * 5)
        rows[0]['type'] = 0
        self.assertIsNone(exact_neutral_probabilities(rows))

    def test_conditioned_results_do_not_get_unconditional_probability(self):
        self.assertIsNone(exact_neutral_probabilities([{'required': '1_4_50', 'type': 2, 'chance': '1'}]))

    def test_same_quest_state_cheaper_choice(self):
        expensive = decode_reward('0_1_1|0_4_-50|5_612_9')['effects']
        cheap = decode_reward('0_1_1|0_4_-5|5_612_9')['effects']
        self.assertEqual(expensive[0], cheap[0])
        self.assertEqual(expensive[2], cheap[2])
        self.assertEqual(cheap[1]['quantity'] - expensive[1]['quantity'], 45)

    def test_real_tavern_source_matches_report(self):
        path = Path(__file__).resolve().parents[1] / 'dados-extraidos/1.2.47/database/events.pt.json'
        if not path.exists():
            self.skipTest('Local game extraction unavailable')
        event = next(e for e in json.loads(path.read_text(encoding='utf-8')) if e['uid'] == 'pt:EventTreasure:346')['raw']
        expensive, cheap = event['choice']
        self.assertEqual(event['required'], '5_612_0|1_4_5')
        self.assertEqual(cheap['text'], 'Pagar apenas o meu')
        self.assertEqual(cheap['result'][0]['reward'], '0_1_1|0_4_-5|5_612_9')
        self.assertEqual({r['reward'] for r in expensive['result']}, {'0_1_1|0_4_-50|5_612_9'})
        self.assertEqual(exact_neutral_probabilities(expensive['result']), ['1/5'] * 5)
        self.assertEqual(exact_neutral_probabilities(cheap['result']), ['1'])


if __name__ == '__main__':
    unittest.main()
