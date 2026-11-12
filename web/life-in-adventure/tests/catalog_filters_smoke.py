"""Real-data filtering regressions, served under the GitHub Pages path."""
import json
import unittest
from pathlib import Path

from playwright.sync_api import expect
import browser_smoke as atlas_smoke


class CatalogFilterTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        atlas_smoke.WikiBrowserTests.setUpClass()
        cls.browser=atlas_smoke.WikiBrowserTests.browser
        cls.base=atlas_smoke.WikiBrowserTests.base
        payload=(Path(__file__).resolve().parents[1]/'dist/events-data.js').read_text()
        cls.source=json.loads(payload.removeprefix('window.ATLAS_DATA=').strip().removesuffix(';'))

    @classmethod
    def tearDownClass(cls):
        atlas_smoke.WikiBrowserTests.tearDownClass()

    def setUp(self):
        self.context=self.browser.new_context(viewport={'width':1440,'height':1000})
        self.page=self.context.new_page()
        self.errors=[]
        self.page.on('pageerror',lambda error:self.errors.append(str(error)))

    def tearDown(self):
        self.assertEqual(self.errors,[])
        self.context.close()

    def goto(self,kind='events'):
        self.page.goto(self.base+('#catalogo='+kind if kind!='events' else ''),wait_until='networkidle')
        if not self.page.locator('#catalogFilters').evaluate('(e)=>e.open'):
            self.page.locator('#catalogFilters > summary').click()

    def query(self,text):
        self.page.locator('#search').fill(text)
        self.page.wait_for_timeout(170)

    def item_keys(self):
        return self.page.locator('#recordGrid h3 [data-record]').evaluate_all('(els)=>els.map(e=>e.dataset.record)')

    def test_event_reward_attribute_filters_combine_with_search_and_can_be_cleared(self):
        self.goto()
        self.page.locator('[data-category="EventTreasure"]').click()
        self.query('#346')
        self.page.locator('#facet-attribute').select_option('4')
        self.page.locator('#facet-reward').select_option('gold_loss')
        expect(self.page.locator('#eventsBody tr')).to_have_count(1)
        expect(self.page.locator('#eventsBody tr')).to_have_attribute('data-event','EventTreasure:346')
        self.page.locator('#facet-reward').select_option('gold_gain')
        expect(self.page.locator('#emptyState')).to_be_visible()
        self.page.locator('[data-remove-catalog-facet="reward"]').click()
        expect(self.page.locator('#eventsBody tr')).to_have_count(1)
        expect(self.page.locator('#facet-attribute')).to_have_value('4')
        self.page.locator('[data-clear-catalog-facets]').click()
        expect(self.page.locator('#facet-attribute')).to_have_value('')
        expect(self.page.locator('#search')).to_have_value('#346')

    def test_event_monster_combat_test_and_character_filters_use_the_recorded_data(self):
        self.goto()
        self.query('#80')
        self.page.locator('#facet-monster').select_option('monster:87')
        self.page.locator('#facet-reward').select_option('combat')
        expect(self.page.locator('#eventsBody tr')).to_have_count(1)
        self.page.locator('#facet-person').fill('ANÃO')
        expect(self.page.locator('#eventsBody tr')).to_have_count(1)
        self.page.locator('#facet-person').fill('personagem inexistente 000xyz')
        expect(self.page.locator('#emptyState')).to_be_visible()
        self.page.locator('#emptyReset').click()
        self.query('#222')
        self.page.locator('#facet-test').select_option('5')
        expect(self.page.locator('#eventsBody tr[data-event="EventNormal:222"]')).to_have_count(1)
        self.page.locator('#facet-test').select_option('7')
        expect(self.page.locator('#eventsBody tr[data-event="EventNormal:222"]')).to_have_count(0)

    def test_item_prices_sort_numerically_across_pages_and_accept_minimum_maximum(self):
        self.goto('item')
        items=[c for c in self.source['catalogs'] if c['kind']=='item']
        asc=sorted(items,key=lambda c:float(c['raw']['price']))
        self.page.locator('#sort').select_option('price-asc')
        self.assertEqual(self.item_keys(),[c['key'] for c in asc[:25]])
        self.page.locator('#nextPage').click()
        self.assertEqual(self.item_keys(),[c['key'] for c in asc[25:50]])
        self.page.locator('#facet-priceMin').fill('100')
        self.page.locator('#facet-priceMax').fill('200')
        self.page.wait_for_timeout(180)
        expect(self.page.locator('#pageNumber')).to_contain_text('1 /')
        by_key={c['key']:c for c in items}
        self.assertTrue(self.item_keys())
        for key in self.item_keys():self.assertTrue(100<=float(by_key[key]['raw']['price'])<=200)
        self.page.locator('[data-clear-catalog-facets]').click()
        self.page.locator('#sort').select_option('price-desc')
        desc=sorted(items,key=lambda c:-float(c['raw']['price']))
        self.assertEqual(self.item_keys(),[c['key'] for c in desc[:25]])

    def test_item_attribute_formulas_and_linked_effects_do_not_invent_bonuses(self):
        self.goto('item')
        self.query('#0')
        self.page.locator('#facet-attribute').select_option('6')
        expect(self.page.locator('#recordGrid h3')).to_contain_text('Adaga')
        self.page.locator('#facet-attribute').select_option('5')
        expect(self.page.locator('#emptyState')).to_be_visible()
        self.page.locator('[data-clear-catalog-facets]').click()
        self.query('#1')
        self.page.locator('#facet-attribute').select_option('7')
        self.page.locator('#facet-effect').select_option('ability:0:0')
        expect(self.page.locator('#recordGrid h3')).to_contain_text('Varinha')
        self.page.locator('#facet-effectText').fill('feitiços')
        expect(self.page.locator('#recordGrid h3')).to_contain_text('Varinha')
        self.page.locator('#facet-effect').select_option('ability:5:0')
        expect(self.page.locator('#emptyState')).to_be_visible()

    def test_other_catalogs_have_specific_filters_and_keep_each_catalog_state_separate(self):
        self.goto('monster')
        self.query('#0')
        self.page.locator('#facet-monsterType').select_option('5')
        self.page.locator('#facet-effect').select_option('ability:8:0')
        expect(self.page.locator('#recordGrid h3')).to_contain_text('Slime')
        self.goto('ability')
        self.page.locator('#facet-attribute').select_option('7')
        self.page.locator('#facet-variant').select_option('0')
        self.query('#0')
        expect(self.page.locator('#recordGrid h3')).to_contain_text('Feitiçaria')
        self.goto('trait')
        self.query('#1')
        self.page.locator('#facet-attribute').select_option('4')
        self.page.locator('#facet-jewels').select_option('known')
        expect(self.page.locator('#recordGrid h3')).to_contain_text('Ganancioso')
        self.goto('ending')
        self.page.locator('#facet-endingGroup').select_option('sub')
        self.page.locator('#facet-story').select_option('1')
        keys=self.item_keys()
        self.assertTrue(keys)
        self.assertTrue(all(k.startswith('ending:sub:1') and 1000<=int(k.split(':')[2])<2000 for k in keys))
        self.page.locator('[data-view="item"]').first.click()
        expect(self.page.locator('#facet-attribute')).to_have_value('')

    def test_portuguese_for_does_not_become_strength_but_real_FOR_and_formulas_still_match(self):
        for kind,ident in [('ability',36),('trait',21),('item',279)]:
            self.goto(kind)
            self.query('#'+str(ident))
            expect(self.page.locator('#recordGrid h3').first).to_be_visible()
            self.page.locator('#facet-attribute').select_option('5')
            expect(self.page.locator('#emptyState')).to_be_visible()
        self.goto('item')
        self.query('#99')
        self.page.locator('#facet-attribute').select_option('5')
        expect(self.page.locator('#recordGrid h3')).to_contain_text('Elixir do Gladiador')
        self.goto('ability')
        self.query('#46')
        self.page.locator('#facet-attribute').select_option('5')
        expect(self.page.locator('#recordGrid h3').first).to_contain_text('Maestria em Armas')
        self.goto('item')
        self.page.locator('[data-clear-catalog-facets]').click()
        self.query('#0')
        self.page.locator('#facet-attribute').select_option('6')
        expect(self.page.locator('#recordGrid h3')).to_contain_text('Adaga')

    def test_filter_controls_remain_usable_on_a_phone_in_both_themes(self):
        self.page.set_viewport_size({'width':390,'height':844})
        self.goto('item')
        self.page.locator('#facet-effectText').press_sequentially('regeneração',delay=35)
        self.page.wait_for_timeout(160)
        expect(self.page.locator('#facet-effectText')).to_have_value('regeneração')
        self.assertEqual(self.page.evaluate('document.activeElement.id'),'facet-effectText')
        for _ in range(2):
            self.assertLessEqual(self.page.evaluate('document.documentElement.scrollWidth'),390)
            self.page.locator('#themeToggle').click()


if __name__=='__main__':unittest.main()
