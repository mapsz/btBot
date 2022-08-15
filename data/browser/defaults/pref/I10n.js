/********************************************************************************************************/
// Locale default pref for k-meleon 
/********************************************************************************************************/
pref("general.useragent.locale", "ru-RU");
pref("general.useragent.contentlocale", "RU");

// Avoid Bug 1008
pref("kmeleon.general.homePage", "resource:///locales/ru-RU/readme.html");

/********************************************************************************************************/
// Privacy

pref("kmeleon.privacy.useragent1.name", "Firefox 2.0");
pref("kmeleon.privacy.useragent1.string", "Mozilla/5.0 (Windows; U; Windows NT 5.1; ru; rv:1.8.1.20) Gecko/20081217 Firefox/2.0.0.20");
pref("kmeleon.privacy.useragent2.name", "SeaMonkey 1.1");
pref("kmeleon.privacy.useragent2.string", "Mozilla/5.0 (Windows; U; Windows NT 5.1; ru-RU; rv:1.8.1.21) Gecko/20090403 SeaMonkey/1.1.16");


/********************************************************************************************************/

pref("intl.charset.detector", "universal_charset_detector");

// Make sure this engine is defined in search.xml!
pref("keyword.URL", "http://www.google.com/search?btnI=1&q=");


/********************************************************************************************************/
// Locale default pref for k-meleon macros
/********************************************************************************************************/

// Domain completion
pref("kmeleon.plugins.macros.domComplete0.prefix", "www.");
pref("kmeleon.plugins.macros.domComplete0.suffix", ".ru");
pref("kmeleon.plugins.macros.domComplete1.prefix", "www.");
pref("kmeleon.plugins.macros.domComplete1.suffix", ".com");
pref("kmeleon.plugins.macros.domComplete2.prefix", "www.");
pref("kmeleon.plugins.macros.domComplete2.suffix", ".org");

// URL Bar access key: Alt+? (set to the key used in IE)
pref("kmeleon.plugins.macros.accel.urlbar.access", "D");


/********************************************************************************************************/
// Web Search

// Default Search Engine URL  (MUST be one out of kmeleon.plugins.macros.search.engine[0..?].url)
pref("kmeleon.general.searchEngine", "http://www.google.ru/search?hl=ru&q=");
// Default Search Engine Name (MUST be one out of kmeleon.plugins.macros.search.engine[0..?].name)
pref("kmeleon.general.searchEngineName", "Google Russia");

// K-Meleon Forums Search
pref("kmeleon.plugins.macros.search.kmforums", "http://kmeleon.sourceforge.net/forum/search.php?forum_id=0&match_forum=ALL&match_dates=0&match_type=ALL&search=");

// Web Search (engine[0..POSITIVE_INFINITY] possible)
// Make sure these engines are defined in search.xml!
pref("kmeleon.plugins.macros.search.engine0.name", "Google Russia");
pref("kmeleon.plugins.macros.search.engine0.url", "http://www.google.ru/search?hl=ru&q=");
pref("kmeleon.plugins.macros.search.engine1.name", "Yandex");
pref("kmeleon.plugins.macros.search.engine1.url", "http://www.yandex.ru/yandsearch?stype=www&nl=0&text=");
pref("kmeleon.plugins.macros.search.engine2.name", "Rambler");
pref("kmeleon.plugins.macros.search.engine2.url", "http://search.rambler.ru/cgi-bin/rambler_search?words=");
pref("kmeleon.plugins.macros.search.engine3.name", "Wikipedia Russia");
pref("kmeleon.plugins.macros.search.engine3.url", "http://ru.wikipedia.org/wiki/");
pref("kmeleon.plugins.macros.search.engine4.name", "Nigma");
pref("kmeleon.plugins.macros.search.engine4.url", "http://www.nigma.ru/index.php?s=");
pref("kmeleon.plugins.macros.search.engine5.name", "gogo");
pref("kmeleon.plugins.macros.search.engine5.url", "http://www.gogo.ru/go?q=");
pref("kmeleon.plugins.macros.search.engine6.name", "Yandex lingvo");
pref("kmeleon.plugins.macros.search.engine6.url", "http://lingvo.yandex.ru/en?search_type=lingvo&st_translate=1&text=");
pref("kmeleon.plugins.macros.search.engine7.name", "Aport");
pref("kmeleon.plugins.macros.search.engine7.url", "http://sm.aport.ru/scripts/template.dll?r=");
pref("kmeleon.plugins.macros.search.engine8.name", "Google");
pref("kmeleon.plugins.macros.search.engine8.url", "http://www.google.com/search?q=");
pref("kmeleon.plugins.macros.search.engine9.name", "Yahoo! Russia");
pref("kmeleon.plugins.macros.search.engine9.url", "http://ru.search.yahoo.com/search?p=");

// Metasearch (meta[0..POSITIVE_INFINITY] possible)
// Make sure these engines are defined in search.xml!
pref("kmeleon.plugins.macros.search.meta0.url", "http://www.google.ru/search?hl=ru&q=");
pref("kmeleon.plugins.macros.search.meta1.url", "http://www.yandex.ru/yandsearch?stype=www&nl=0&text=");
pref("kmeleon.plugins.macros.search.meta2.url", "http://search.rambler.ru/cgi-bin/rambler_search?words=");
pref("kmeleon.plugins.macros.search.meta3.url", "http://ru.wikipedia.org/wiki/");
pref("kmeleon.plugins.macros.search.meta4.url", "http://www.gogo.ru/go?q=");
pref("kmeleon.plugins.macros.search.meta5.url", "http://ru.search.yahoo.com/search?p=");
