"""Responsive compact navigation and persistent sidebar behavior."""
import unittest

from playwright.sync_api import expect
import browser_smoke as atlas_smoke


class LayoutBrowserTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        atlas_smoke.WikiBrowserTests.setUpClass()
        cls.browser=atlas_smoke.WikiBrowserTests.browser
        cls.base=atlas_smoke.WikiBrowserTests.base

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

    def goto(self,fragment=''):
        self.page.goto(self.base+fragment,wait_until='networkidle')

    def test_desktop_collapse_reclaims_space_and_survives_reload(self):
        self.goto()
        expect(self.page.locator('#atlasSidebar')).to_be_visible()
        self.assertLessEqual(self.page.locator('.topbar').bounding_box()['height'],61)
        original=self.page.locator('main').bounding_box()['width']
        self.page.locator('#sidebarClose').click()
        expect(self.page.locator('#atlasSidebar')).not_to_be_visible()
        expect(self.page.locator('#sidebarToggle')).to_have_attribute('aria-expanded','false')
        self.assertGreater(self.page.locator('main').bounding_box()['width'],original+200)
        self.assertEqual(self.page.evaluate('document.activeElement.id'),'sidebarToggle')
        self.page.reload(wait_until='networkidle')
        expect(self.page.get_by_role('button',name='Abrir barra lateral',exact=True)).to_be_visible()
        expect(self.page.locator('#atlasSidebar')).not_to_be_visible()
        self.page.locator('#sidebarToggle').click()
        self.page.reload(wait_until='networkidle')
        expect(self.page.locator('#atlasSidebar')).to_be_visible()
        expect(self.page.locator('#sidebarToggle')).to_have_attribute('aria-expanded','true')

    def test_mobile_drawer_is_closed_initially_and_supports_escape_tab_and_backdrop(self):
        self.page.set_viewport_size({'width':390,'height':844})
        self.goto()
        expect(self.page.locator('#atlasSidebar')).not_to_be_visible()
        self.assertLessEqual(self.page.locator('.topbar').bounding_box()['height'],101)
        self.assertLessEqual(self.page.evaluate('document.documentElement.scrollWidth'),390)
        self.page.locator('#sidebarToggle').click()
        expect(self.page.locator('#atlasSidebar')).to_have_attribute('aria-modal','true')
        self.assertEqual(self.page.evaluate('document.activeElement.id'),'sidebarClose')
        self.page.keyboard.press('Shift+Tab')
        self.assertTrue(self.page.evaluate('document.getElementById("atlasSidebar").contains(document.activeElement)'))
        self.assertNotEqual(self.page.evaluate('document.activeElement.id'),'sidebarClose')
        self.page.keyboard.press('Tab')
        self.assertEqual(self.page.evaluate('document.activeElement.id'),'sidebarClose')
        self.page.keyboard.press('Escape')
        expect(self.page.locator('#sidebarBackdrop')).not_to_be_visible()
        self.assertEqual(self.page.evaluate('document.activeElement.id'),'sidebarToggle')
        self.page.locator('#sidebarToggle').click()
        self.page.locator('#sidebarBackdrop').click(position={'x':365,'y':80})
        expect(self.page.locator('#atlasSidebar')).not_to_be_visible()
        self.assertEqual(self.page.evaluate('document.activeElement.id'),'sidebarToggle')

    def test_sidebar_game_navigation_is_contextual_and_mobile_navigation_closes_it(self):
        self.page.set_viewport_size({'width':390,'height':844})
        self.goto('#catalogo=game')
        expect(self.page.locator('body')).to_have_class('game-view')
        expect(self.page.locator('.page-heading')).not_to_be_visible()
        self.page.locator('#sidebarToggle').click()
        expect(self.page.locator('#gameSideNav')).to_be_visible()
        expect(self.page.locator('#gameSideNav [data-game-panel="companion"]')).to_be_visible()
        self.page.locator('#atlasSidebar [data-view="events"]').first.click() if self.page.locator('#atlasSidebar [data-view="events"]').count() else self.page.locator('#atlasSidebar [data-view="favorites"]').first.click()
        expect(self.page.locator('#atlasSidebar')).not_to_be_visible()
        expect(self.page.locator('#sidebarBackdrop')).not_to_be_visible()
        expect(self.page.locator('body')).not_to_have_class('game-view')
        self.page.locator('#sidebarToggle').click()
        expect(self.page.locator('#gameSideNav')).not_to_be_visible()

    def test_layout_has_no_horizontal_page_scroll_in_both_themes(self):
        for width in [320,390,768,1440]:
            self.page.set_viewport_size({'width':width,'height':844})
            self.goto()
            for theme in ['light','dark']:
                if self.page.evaluate('document.documentElement.dataset.theme')!=theme:
                    self.page.locator('#themeToggle').click()
                self.assertLessEqual(self.page.evaluate('document.documentElement.scrollWidth'),width)
                self.page.locator('#sidebarToggle').click()
                self.assertLessEqual(self.page.evaluate('document.documentElement.scrollWidth'),width)
                self.page.locator('#sidebarClose').click()


if __name__=='__main__':
    unittest.main()
