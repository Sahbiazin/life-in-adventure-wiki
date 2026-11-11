import json
import sys
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / 'scripts'))
from decode_rules import STAT, decode_required, decode_reward, exact_neutral_probabilities
from audit_rules import audit


class RuleReadinessTests(unittest.TestCase):
    def test_named_attributes_match_native_ui_indices(self):
        self.assertEqual({k: STAT[k] for k in (5, 6, 7, 8, 9, 13, 14)},
                         {5: 'Força', 6: 'Destreza', 7: 'Inteligência', 8: 'Saúde máxima', 9: 'Sanidade máxima', 13: 'Constituição', 14: 'Sabedoria'})
        self.assertNotIn(3, STAT)  # The localized stat table contains only "d".

    def test_ability_thresholds_and_missing_traits_are_distinct_conditions(self):
        parts = decode_required('20_3_2|21_3_3|26_9_99|28_9_0')['conditions']
        self.assertEqual([p['comparison'] for p in parts], ['>=', '<', 'contains', 'not_contains'])
        self.assertEqual([p['domain'] for p in parts], ['ability_effective']*2+['traitList']*2)
        self.assertIsNone(parts[2]['quantity'])  # Trait membership ignores quantity.

    def test_state_assignments_differ_from_epilogue_records(self):
        effects = decode_reward('12_0_2.9|14_9_6|15_1_4|29_9_6|30_1_4')['effects']
        self.assertEqual(effects[0]['operation'], 'set_sub_state')
        self.assertEqual(effects[0]['quantity'], 2)
        self.assertEqual([p['ending_id'] for p in effects[1:]], [9006, 1004, 9006, 1004])
        self.assertEqual([p['operation'] for p in effects[1:]], ['record_sub_ending', 'record_main_ending', 'remove_sub_ending', 'remove_main_ending'])

    def test_sub_story_equality_keeps_activation_and_selection_context(self):
        condition = decode_required('12_2_5')['conditions'][0]
        self.assertEqual((condition['domain'], condition['index'], condition['quantity']), ('subEventList', 2, 5))
        self.assertEqual(condition['context_requirements'], ['sub_event_enabled', 'curSubEvent_matches_if_provided'])
        self.assertEqual(decode_required('18_2_5')['conditions'][0]['comparison'], '!=')

    def test_ending_membership_and_absence_are_composite_keys(self):
        conditions = decode_required('31_1_3|33_1_3|32_2_4|34_2_4')['conditions']
        self.assertEqual([p['domain'] for p in conditions], ['subEpList']*2+['mainEpList']*2)
        self.assertEqual([p['comparison'] for p in conditions], ['contains', 'not_contains']*2)

    def test_invalid_input_is_preserved_instead_of_crashing_or_claiming_success(self):
        for token in ['1_x_4', '1_4_no', '1_4_nan', '1_4_inf', '0_4_1e400', 'bad_token']:
            for decoder in [decode_required, decode_reward]:
                parsed = decoder(token)
                self.assertFalse(parsed['fully_decoded'], (token, decoder.__name__))
                self.assertEqual(parsed['raw'], token)
        for chance in ['nan', 'inf', '0_x_1', '9_0_1|1']:
            self.assertIsNone(exact_neutral_probabilities([{'required': '', 'type': 2, 'chance': chance}]))

    def test_audit_counts_all_scopes_and_does_not_turn_interpretation_into_readiness(self):
        source = [{'group': 'EventMain', 'id': 1, 'raw': {'required': '5_2_0', 'choice': [
            {'required': '18_2_1', 'result': [{'required': '', 'reward': '5_2_1|6_0_42', 'type': 2, 'chance': '1'}]}]}}]
        report, states = audit(source)
        self.assertEqual(report['coverage']['required']['commands'], 2)
        self.assertEqual(report['coverage']['reward']['decoded_commands'], 1)
        self.assertEqual(report['coverage']['reward']['unknown']['6']['count'], 1)
        self.assertFalse(report['simulation_ready'])
        self.assertFalse(report['runtime_validated'])
        self.assertEqual(states['chainEventList:2']['readers'][1]['comparison'], '!=')
        self.assertEqual(states['chainEventList:2']['writers'][0]['value'], 1)
        self.assertEqual(states['chainEventList:2']['writers'][0]['scope'], 'Escolha 1 · resultado 1')

    def test_native_version_and_dispatch_are_checked_when_binary_is_present(self):
        from verify_native_rules import BINARY, verify
        if not BINARY.exists() or BINARY.stat().st_size < 1000:
            self.skipTest('Materialized ARM64 binary is required for native verification')
        evidence = verify()
        self.assertEqual(evidence['required_dispatch']['20'], '0x1a96028')
        self.assertFalse(evidence['runtime_validated'])
        self.assertEqual(evidence, json.loads((ROOT / 'docs/native-rules-evidence.json').read_text()))


if __name__ == '__main__':
    unittest.main()
