"""Native item attributes are visible, searchable and distinct from bonuses."""
import unittest
from playwright.sync_api import expect
import catalog_filters_smoke as filters


class ItemScalingBrowserTests(unittest.TestCase):
    setUpClass = classmethod(filters.CatalogFilterTests.setUpClass.__func__)
    tearDownClass = classmethod(filters.CatalogFilterTests.tearDownClass.__func__)
    setUp = filters.CatalogFilterTests.setUp
    tearDown = filters.CatalogFilterTests.tearDown
    goto = filters.CatalogFilterTests.goto
    query = filters.CatalogFilterTests.query
    item_keys = filters.CatalogFilterTests.item_keys

    def test_single_and_dual_attributes_are_visible_on_cards_in_native_order(self):
        self.goto('item')
        for ident, expected in [(0,['DES']),(18,['FOR']),(27,['DES','CON']),(3,['SAB','CON']),(107,['CAR','CON'])]:
            self.query('#'+str(ident))
            card=self.page.locator('.catalog-card')
            expect(card).to_have_count(1)
            self.assertEqual(card.locator('.item-attribute').all_text_contents(),expected)

    def test_item_detail_explains_damage_coefficients_and_preserves_raw_data(self):
        self.page.goto(self.base+'#catalogo=item&registro=item%3A0',wait_until='networkidle')
        panel=self.page.locator('[data-item-scaling-detail]')
        expect(panel).to_contain_text('DES · Destreza')
        expect(panel).to_contain_text('8,59 + 0,182 × DES')
        expect(panel).to_contain_text('Por ponto de Destreza: +0,182')
        expect(panel).to_contain_text('sem conceder esses pontos de atributo')
        expect(self.page.locator('#overviewPanel')).to_contain_text('8.59|0_6_0.182')

    def test_specific_scaling_filters_combine_without_equating_a_bonus_with_scaling(self):
        self.goto('item')
        self.page.locator('#facet-scalingAttribute').select_option('6')
        self.page.locator('#facet-scalingCount').select_option('1')
        self.query('#0');expect(self.page.locator('.catalog-card')).to_have_count(1)
        self.query('#27');expect(self.page.locator('#emptyState')).to_be_visible()
        self.page.locator('#facet-scalingCount').select_option('2')
        expect(self.page.locator('.catalog-card')).to_have_count(1)
        self.page.locator('#facet-scalingAttribute').select_option('13')
        expect(self.page.locator('.catalog-card')).to_have_count(1)
        self.page.locator('#facet-scalingCount').select_option('')
        self.page.locator('#facet-scalingAttribute').select_option('5')
        self.query('#99');expect(self.page.locator('#emptyState')).to_be_visible()
        self.page.locator('#facet-scalingAttribute').select_option('none')
        expect(self.page.locator('.catalog-card')).to_have_count(1)
        self.assertEqual(self.page.locator('.item-attribute').count(),0)

    def test_non_scaling_item_is_described_without_inventing_a_weapon_attribute(self):
        self.page.goto(self.base+'#catalogo=item&registro=item%3A99',wait_until='networkidle')
        panel=self.page.locator('[data-item-scaling-detail]')
        expect(panel).to_contain_text('Sem atributo de escala registrado')
        expect(panel).to_contain_text('Habilidades e efeitos')
        self.assertEqual(panel.locator('.item-attribute').count(),0)

    def test_mobile_armor_detail_and_filters_fit_both_themes(self):
        self.page.set_viewport_size({'width':390,'height':844})
        self.goto('item');self.query('#4')
        self.page.locator('.catalog-card h3 a').click()
        for theme in ['light','dark']:
            self.page.evaluate('theme=>document.documentElement.dataset.theme=theme',theme)
            panel=self.page.locator('[data-item-scaling-detail]')
            self.assertEqual(panel.locator('.item-attribute').all_text_contents(),['CON','SAB'])
            expect(panel).to_contain_text('129,087 + 1,367 × CON + 1,367 × SAB')
            self.assertLessEqual(self.page.evaluate('document.documentElement.scrollWidth'),390)
            self.assertLessEqual(panel.evaluate('e=>e.scrollWidth'),panel.evaluate('e=>e.clientWidth'))


if __name__ == '__main__':
    unittest.main()
