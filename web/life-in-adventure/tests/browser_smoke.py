"""Run with a Python that provides Playwright; uses the installed Chromium."""
import json
import os
import tempfile
import threading
import unittest
from functools import partial
from http.server import SimpleHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path
from urllib.parse import urljoin

from playwright.sync_api import sync_playwright, expect

DIST = Path(__file__).resolve().parents[1] / 'dist'
STORAGE_KEY = 'life-in-adventure:notebook:v1'


class QuietHandler(SimpleHTTPRequestHandler):
    def log_message(self, *args):
        pass


class WikiBrowserTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.site = tempfile.TemporaryDirectory(prefix='lia-pages-')
        Path(cls.site.name, 'life-in-adventure-wiki').symlink_to(DIST, target_is_directory=True)
        cls.server = ThreadingHTTPServer(('127.0.0.1', 0), partial(QuietHandler, directory=cls.site.name))
        cls.thread = threading.Thread(target=cls.server.serve_forever, daemon=True)
        cls.thread.start()
        cls.base = f'http://127.0.0.1:{cls.server.server_port}/life-in-adventure-wiki/'
        cls.pw = sync_playwright().start()
        cls.browser = cls.pw.chromium.launch(executable_path=os.environ.get('CHROMIUM_PATH', '/usr/bin/chromium'), headless=True, args=['--no-sandbox'])

    @classmethod
    def tearDownClass(cls):
        cls.browser.close()
        cls.pw.stop()
        cls.server.shutdown()
        cls.server.server_close()
        cls.thread.join()
        cls.site.cleanup()

    def setUp(self):
        self.context = self.browser.new_context(viewport={'width': 1440, 'height': 1000})
        self.page = self.context.new_page()
        self.errors = []
        self.page.on('pageerror', lambda error: self.errors.append(str(error)))

    def tearDown(self):
        self.assertEqual(self.errors, [])
        self.context.close()

    def goto(self, fragment=''):
        self.page.goto(self.base + fragment, wait_until='networkidle')

    def test_readable_rules_raw_data_and_probability(self):
        self.goto('#evento=EventTreasure%3A346')
        expect(self.page.locator('#eventDialog')).to_be_visible()
        expect(self.page.locator('#overviewPanel')).to_contain_text('Ouro: pelo menos 5')
        expect(self.page.locator('#overviewPanel')).to_contain_text('Ouro: -50')
        expect(self.page.locator('#overviewPanel')).to_contain_text('20% (1/5)')
        original = self.page.locator('#overviewPanel > .raw-details')
        original.locator('summary').click()
        expect(original.locator('pre')).to_contain_text('5_612_0|1_4_5')
        expect(original.locator('pre')).to_contain_text('0_1_1|0_4_-50|5_612_9')
        self.page.locator('#mapTab').click()
        expect(self.page.locator('#choiceMap svg')).to_be_visible()

    def test_catalogs_variants_and_search(self):
        counts = {'item': 390, 'monster': 206, 'ability': 174, 'trait': 64, 'ending': 354}
        for kind, count in counts.items():
            with self.subTest(kind=kind):
                self.goto('#catalogo=' + kind)
                expect(self.page.locator('#resultCount')).to_have_text(f'{count} registros')
                self.assertEqual(self.page.locator('.catalog-card').count(), 25)
                self.page.locator('.catalog-card h3 a').first.click()
                expect(self.page.locator('#eventDialog')).to_be_visible()
                expect(self.page.locator('#mapTab')).to_be_hidden()
                self.assertTrue(self.page.locator('.narrative').inner_text())
        self.goto('#catalogo=ability&registro=ability%3A3%3A0')
        self.page.locator('.variant-link').filter(has_text='Variante 2').click()
        self.assertIn('ability%3A3%3A2', self.page.url)
        expect(self.page.locator('.narrative')).to_contain_text('Corrupção')
        self.goto('#catalogo=item')
        self.page.locator('#search').fill('adaga')
        expect(self.page.locator('.catalog-card h3').first).to_contain_text('Adaga')

    def test_item_reward_link_reverse_events_and_back(self):
        self.goto('#evento=EventBattle%3A56')
        link = self.page.locator('.rule-list a[data-record="item:181"]').first
        link.click()
        expect(self.page.locator('#detailId')).to_have_text('Itens #181')
        expect(self.page.locator('#relatedRecords')).to_contain_text('Concede item')
        self.assertGreater(self.page.locator('#relatedRecords a[data-record="EventBattle:56"]').count(), 0)
        self.page.locator('#detailBack').click()
        expect(self.page.locator('#detailId')).to_contain_text('COM · 0056')
        self.page.go_back()
        expect(self.page.locator('#detailId')).to_have_text('Itens #181')
        self.page.go_forward()
        expect(self.page.locator('#detailId')).to_contain_text('COM · 0056')

    def test_incoming_links_keep_table_and_choice_result_identity(self):
        self.goto('#evento=EventBattle%3A11')
        self.page.locator('#incomingTab').click()
        rows = self.page.locator('.incoming-card')
        self.assertGreater(rows.count(), 0)
        links = self.page.locator('#incomingPanel a[data-record]').evaluate_all('(nodes) => nodes.map(n => n.dataset.record)')
        self.assertTrue(all(key.startswith('EventBattle:') for key in links))
        expect(self.page.locator('#incomingPanel')).to_contain_text('Escolha 1: Salvá-lo · resultado 1')
        self.page.locator('#incomingPanel a[data-record="EventBattle:10"]').first.click()
        expect(self.page.locator('#detailId')).to_contain_text('COM · 0010')

    def test_favorites_and_recent_history_persist_and_can_be_cleared(self):
        self.goto('#evento=EventTreasure%3A346')
        self.page.locator('#favoriteToggle').click()
        expect(self.page.locator('#favoriteToggle')).to_have_attribute('aria-pressed', 'true')
        self.page.locator('#closeDialog').click()
        self.page.locator('.library-nav [data-view="favorites"]').click()
        self.assertEqual(self.page.locator('.catalog-card').count(), 1)
        self.page.reload(wait_until='networkidle')
        self.assertEqual(self.page.locator('.catalog-card').count(), 1)
        self.page.locator('.catalog-card h3 a').click()
        expect(self.page.locator('#favoriteToggle')).to_have_attribute('aria-pressed', 'true')
        self.page.locator('#favoriteToggle').click()
        self.page.locator('#closeDialog').click()
        expect(self.page.locator('#emptyState')).to_be_visible()
        self.page.locator('.library-nav [data-view="history"]').click()
        self.assertEqual(self.page.locator('.catalog-card').count(), 1)
        self.page.locator('#clearHistory').click()
        expect(self.page.locator('#emptyState')).to_be_visible()
        saved = json.loads(self.page.evaluate('(key) => localStorage.getItem(key)', STORAGE_KEY))
        self.assertEqual(saved, {'favorites': [], 'history': []})

    def test_permalink_reload_browser_navigation_and_clipboard_fallback(self):
        self.goto('#catalogo=item&registro=item%3A181')
        href = self.page.locator('#permalink').get_attribute('href')
        self.page.reload(wait_until='networkidle')
        expect(self.page.locator('#detailId')).to_have_text('Itens #181')
        self.page.evaluate("Object.defineProperty(navigator, 'clipboard', {value: undefined, configurable: true})")
        self.page.locator('#copyLink').click()
        expect(self.page.locator('#actionStatus input')).to_have_value(urljoin(self.base, href))
        self.page.locator('#closeDialog').click()
        self.page.go_back()
        expect(self.page.locator('#eventDialog')).to_be_visible()
        expect(self.page.locator('#detailId')).to_have_text('Itens #181')
        self.page.go_forward()
        expect(self.page.locator('#eventDialog')).not_to_be_visible()

    def test_storage_denied_does_not_break_navigation(self):
        self.context.add_init_script("Storage.prototype.getItem = () => {throw new Error('denied')}; Storage.prototype.setItem = () => {throw new Error('denied')}")
        self.goto('#evento=EventTreasure%3A346')
        self.page.locator('#favoriteToggle').click()
        expect(self.page.locator('#favoriteToggle')).to_have_attribute('aria-pressed', 'true')
        expect(self.page.locator('#appStatus')).to_contain_text('apenas durante esta visita')
        self.page.locator('#closeDialog').click()
        self.page.locator('.library-nav [data-view="favorites"]').click()
        self.assertEqual(self.page.locator('.catalog-card').count(), 1)

    def test_mobile_keyboard_and_offline_assets(self):
        self.page.set_viewport_size({'width': 390, 'height': 844})
        self.goto('#catalogo=monster')
        self.assertLessEqual(self.page.evaluate('document.documentElement.scrollWidth'), 390)
        self.page.locator('.catalog-card h3 a').first.click()
        self.assertGreater(self.page.locator('.dialog-content').evaluate('(el) => el.clientHeight'), 120)
        self.page.keyboard.press('Escape')
        expect(self.page.locator('#eventDialog')).not_to_be_visible()
        self.page.keyboard.press('/')
        expect(self.page.locator('#search')).to_be_focused()
        # Managed Chromium blocks file:// navigation. Serve the same local assets
        # through interception, with networking disabled, to exercise the offline app.
        def asset(route):
            from urllib.parse import urlparse
            name = urlparse(route.request.url).path.lstrip('/') or 'index.html'
            path = DIST / name
            if name in ('index.html', 'styles.css', 'app.js', 'events-data.js', 'game-engine.js', 'game-mode.js'):
                mime = 'text/html' if name.endswith('.html') else 'text/css' if name.endswith('.css') else 'application/javascript'
                route.fulfill(body=path.read_bytes(), content_type=mime)
            else:
                route.abort()
        self.context.route('http://atlas.offline.test/**', asset)
        self.context.set_offline(True)
        self.page.goto('http://atlas.offline.test/#evento=EventTreasure%3A346', wait_until='load')
        expect(self.page.locator('#detailId')).to_contain_text('TES · 0346')
        self.page.locator('#incomingTab').focus()
        self.page.keyboard.press('Home')
        expect(self.page.locator('#overviewTab')).to_be_focused()

    def test_epilogues_and_state_dependencies_are_traceable(self):
        self.goto('#evento=EventMain%3A27')
        self.page.locator('.linked-records a[data-record="ending:main:1004"]').first.click()
        expect(self.page.locator('#detailId')).to_contain_text('História principal #1 · epílogo #4')
        expect(self.page.locator('#relatedRecords')).to_contain_text('Registra epílogo')
        self.goto('#evento=EventTreasure%3A346')
        expect(self.page.locator('.state-dependencies')).to_contain_text('Cadeia de eventos #612')
        self.page.locator('.state-card > summary').first.click()
        self.page.locator('.state-card > details > summary').first.click()
        self.assertGreater(self.page.locator('.state-card a[data-record]').count(), 0)
        expect(self.page.locator('.state-dependencies')).to_contain_text('não garante desbloqueio')
        self.page.locator('#closeDialog').click()
        self.page.locator('#ruleCoverage > summary').click()
        expect(self.page.locator('#ruleCoverage')).to_contain_text('Interpretação estática')
        expect(self.page.locator('#ruleCoverage')).to_contain_text('Requisitos interpretados')

    def test_unknown_route_and_history_limit(self):
        self.goto('#evento=EventBattle%3A999999')
        expect(self.page.locator('#appStatus')).to_contain_text('Registro não encontrado')
        self.assertEqual(self.page.locator('#eventsBody tr').count(), 25)
        keys = self.page.evaluate('window.ATLAS_DATA.events.slice(0, 105).map(e => `${e.group}:${e.id}`)')
        self.page.evaluate('([key, entries]) => localStorage.setItem(key, JSON.stringify({favorites: [], history: entries}))', [STORAGE_KEY, keys])
        self.page.reload(wait_until='networkidle')
        self.goto('#catalogo=history&evento=EventTreasure%3A346')
        self.assertEqual(len(json.loads(self.page.evaluate('(key) => localStorage.getItem(key)', STORAGE_KEY))['history']), 100)


if __name__ == '__main__':
    unittest.main(verbosity=2)
