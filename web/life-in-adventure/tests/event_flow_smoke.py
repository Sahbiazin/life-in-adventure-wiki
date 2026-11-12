"""Read-only complete flow, isolated from run UI and catalog routing."""
import unittest
from playwright.sync_api import expect
import browser_smoke as atlas_fixture


class EventFlowBrowserTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        atlas_fixture.WikiBrowserTests.setUpClass()
        cls.browser=atlas_fixture.WikiBrowserTests.browser
        cls.base=atlas_fixture.WikiBrowserTests.base

    @classmethod
    def tearDownClass(cls):
        atlas_fixture.WikiBrowserTests.tearDownClass()

    def setUp(self):
        self.context=self.browser.new_context(viewport={'width':390,'height':844})
        self.page=self.context.new_page()
        self.errors=[]
        self.page.on('pageerror',lambda error:self.errors.append(str(error)))
        self.page.set_content(f'<html lang="pt-BR"><head><link rel="stylesheet" href="{self.base}styles.css"><link rel="stylesheet" href="{self.base}event-flow.css"></head><body><div id="fixture" class="game-root" style="padding:10px"></div></body></html>')
        for asset in ['events-data.js','game-engine.js','event-flow.js']:
            self.page.add_script_tag(url=self.base+asset)

    def tearDown(self):
        self.assertEqual(self.errors,[])
        self.context.close()

    def mount(self,key):
        return self.page.evaluate('''key=>{window.testIndex=AtlasRun.createIndex(ATLAS_DATA);window.consulted=[];const t=performance.now();window.flow=AtlasFlow.mount(document.getElementById('fixture'),testIndex.events.get(key),testIndex,{onOpenEvent:key=>consulted.push(key)});return {ms:performance.now()-t,nodes:flow.graph.nodes.length,cards:flow.layout.cards.length,orientation:flow.layout.orientation};}''',key)

    def test_mobile_complete_treant_flow_has_all_branches_zoom_and_read_only_consultation(self):
        result=self.mount('EventTreasure:360')
        self.assertEqual(result['orientation'],'vertical')
        self.assertEqual(self.page.locator('.ef-event').count(),5)
        self.assertEqual(self.page.locator('.ef-choice').count(),16)
        self.assertEqual(self.page.locator('.ef-result').count(),23)
        expect(self.page.locator('.ef-canvas')).to_contain_text('Entearvore')
        expect(self.page.locator('.ef-canvas')).to_contain_text('Teste de Carisma')
        self.assertLessEqual(self.page.evaluate('document.documentElement.scrollWidth'),390)
        before=self.page.locator('.ef-canvas svg').evaluate('(svg)=>svg.getBoundingClientRect().width')
        self.page.locator('[data-ef-action="zoom-in"]').click()
        self.assertGreater(self.page.locator('.ef-canvas svg').evaluate('(svg)=>svg.getBoundingClientRect().width'),before)
        self.page.locator('.ef-find select').select_option('EventTreasure:363')
        node=self.page.locator('[data-flow-event="EventTreasure:363"]')
        expect(node).to_be_in_viewport()
        node.focus();self.page.keyboard.press('Enter')
        self.assertEqual(self.page.evaluate('consulted'),['EventTreasure:363'])
        self.page.locator('.ef-list>summary').click()
        expect(self.page.locator('.ef-list-stage')).to_have_count(5)
        expect(self.page.locator('.ef-list')).to_contain_text('Desistir da negociação')
        self.assertEqual(self.page.evaluate('flow.graph.nodes.length'),5)

    def test_largest_component_mounts_without_truncation_in_mobile_and_desktop_dark(self):
        for width in [390,1200]:
            with self.subTest(width=width):
                self.page.set_viewport_size({'width':width,'height':844})
                self.page.evaluate("document.documentElement.dataset.theme='dark'")
                result=self.mount('EventSub:909')
                self.assertEqual(result['nodes'],58)
                self.assertEqual(result['cards'],352)
                self.assertFalse(self.page.evaluate('flow.graph.truncated'))
                self.assertLess(result['ms'],3000)
                last_key=self.page.evaluate('flow.graph.nodes.at(-1).key')
                self.page.locator('.ef-find select').select_option(last_key)
                expect(self.page.locator(f'[data-flow-event="{last_key}"]')).to_be_in_viewport()
                self.assertLessEqual(self.page.evaluate('document.documentElement.scrollWidth'),width)
                self.page.locator('[data-ef-action="fit"]').click()
                self.assertEqual(self.page.locator('.ef-event').count(),58)


if __name__=='__main__':
    unittest.main()
