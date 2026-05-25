// Librewolf user.js
// Kaynak: prefs.js'den temizlendi, timestamp/cache/UUID'ler çıkarıldı

// --- Gizlilik & Güvenlik ---
user_pref("browser.contentblocking.category", "strict");
user_pref("browser.safebrowsing.downloads.remote.block_potentially_unwanted", false);
user_pref("browser.safebrowsing.downloads.remote.block_uncommon", false);
user_pref("browser.safebrowsing.downloads.remote.enabled", false);
user_pref("browser.safebrowsing.downloads.remote.url", "");
user_pref("browser.safebrowsing.provider.google4.dataSharingURL", "");
user_pref("browser.search.separatePrivateDefault", false);
user_pref("dom.security.https_only_mode_ever_enabled", true);
user_pref("network.captive-portal-service.enabled", false);
user_pref("network.connectivity-service.enabled", false);
user_pref("network.early-hints.preconnect.max_connections", 0);
user_pref("network.http.http3.enable_0rtt", false);
user_pref("network.http.referer.disallowCrossSiteRelaxingDefault.top_navigation", true);
user_pref("network.http.speculative-parallel-limit", 0);
user_pref("network.prefetch-next", false);
user_pref("privacy.annotate_channels.strict_list.enabled", true);
user_pref("privacy.bounceTrackingProtection.hasMigratedUserActivationData", true);
user_pref("privacy.bounceTrackingProtection.mode", 1);
user_pref("privacy.fingerprintingProtection", true);
user_pref("privacy.globalprivacycontrol.was_ever_enabled", true);
user_pref("privacy.history.custom", true);
user_pref("privacy.query_stripping.enabled", true);
user_pref("privacy.query_stripping.enabled.pbmode", true);
user_pref("privacy.sanitize.pending", "[]");
user_pref("privacy.trackingprotection.allow_list.baseline.enabled", false);
user_pref("privacy.trackingprotection.allow_list.convenience.enabled", false);
user_pref("privacy.trackingprotection.allow_list.hasMigratedCategoryPrefs", true);
user_pref("privacy.trackingprotection.consentmanager.skip.pbmode.enabled", false);
user_pref("privacy.trackingprotection.emailtracking.enabled", true);
user_pref("privacy.trackingprotection.enabled", true);
user_pref("privacy.trackingprotection.socialtracking.enabled", true);
user_pref("security.tls.enable_0rtt_data", false);

// --- Arayüz & Dikey Sekmeler ---
user_pref("sidebar.revamp", true);
user_pref("sidebar.verticalTabs", true);
user_pref("sidebar.verticalTabs.dragToPinPromo.dismissed", true);
user_pref("sidebar.backupState", "{\"command\":\"\",\"panelOpen\":false,\"bookmarksExpandedFolders\":[],\"launcherWidth\":252,\"launcherExpanded\":true,\"launcherVisible\":true}");
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);
user_pref("browser.toolbars.bookmarks.visibility", "never");
user_pref("browser.theme.toolbar-theme", 0);
user_pref("browser.uiCustomization.state", "{\"placements\":{\"widget-overflow-fixed-list\":[],\"unified-extensions-area\":[],\"nav-bar\":[\"sidebar-button\",\"back-button\",\"forward-button\",\"stop-reload-button\",\"zoom-controls\",\"vertical-spacer\",\"urlbar-container\",\"search-container\",\"downloads-button\",\"fxa-toolbar-menu-button\",\"reset-pbm-toolbar-button\",\"unified-extensions-button\",\"ublock0_raymondhill_net-browser-action\",\"alltabs-button\"],\"toolbar-menubar\":[\"menubar-items\"],\"TabsToolbar\":[],\"vertical-tabs\":[\"tabbrowser-tabs\"],\"PersonalToolbar\":[\"personal-bookmarks\"]},\"seen\":[\"reset-pbm-toolbar-button\",\"developer-button\",\"screenshot-button\",\"ublock0_raymondhill_net-browser-action\"],\"dirtyAreaCache\":[\"nav-bar\",\"vertical-tabs\",\"TabsToolbar\",\"toolbar-menubar\",\"PersonalToolbar\"],\"currentVersion\":24,\"newElementCount\":3}");

// --- Arama ---
user_pref("browser.policies.runOncePerModification.removeSearchEngines", "[\"Google\",\"Bing\",\"Amazon.com\",\"eBay\",\"Twitter\",\"Perplexity\"]");
user_pref("browser.policies.runOncePerModification.setDefaultSearchEngine", "DuckDuckGo");
user_pref("browser.urlbar.suggest.bookmark", false);
user_pref("browser.urlbar.suggest.quickactions", false);
user_pref("browser.urlbar.suggest.topsites", false);

// --- Bölge & Telemetri ---
user_pref("browser.region.network.url", "");
user_pref("browser.region.update.enabled", false);
user_pref("captivedetect.canonicalURL", "");
user_pref("permissions.manager.defaultsUrl", "");
user_pref("toolkit.winRegisterApplicationRestart", false);

// --- Dil ---
user_pref("intl.locale.requested", "tr,en-US");
user_pref("layout.spellcheckDefault", 0);

// --- Diğer ---
user_pref("browser.bookmarks.restore_default_bookmarks", false);
user_pref("browser.dom.window.dump.enabled", false);
user_pref("browser.download.viewableInternally.typeWasRegistered.avif", true);
user_pref("browser.download.viewableInternally.typeWasRegistered.webp", true);
user_pref("browser.engagement.sidebar-button.has-used", true);
user_pref("browser.policies.applied", true);
user_pref("browser.toolbarbuttons.introduced.sidebar-button", true);
user_pref("devtools.console.stdout.chrome", false);
user_pref("devtools.debugger.remote-enabled", false);
user_pref("dom.forms.autocomplete.formautofill", true);
user_pref("extensions.activeThemeID", "default-theme@mozilla.org");
user_pref("extensions.ui.dictionary.hidden", true);
user_pref("extensions.ui.lastCategory", "addons://list/extension");
user_pref("extensions.ui.locale.hidden", true);
user_pref("extensions.ui.sitepermission.hidden", true);
user_pref("extensions.webextensions.ExtensionStorageIDB.migrated.uBlock0@raymondhill.net", true);
user_pref("extensions.quarantinedDomains.list", "autoatendimento.bb.com.br,ibpf.sicredi.com.br,ibpj.sicredi.com.br,internetbanking.caixa.gov.br,www.ib12.bradesco.com.br,www2.bancobrasil.com.br");
