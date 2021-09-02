# Chromium on OpenBSD

Firefox and Chromium are basically your only options for a decent browser that works with today's [DEL: JavaScript cesspool :DEL] modern web. I've found Chromium to be much faster than Firefox, so that's what I use. However, I stay cognizant of that fact that this browser is somewhat of a botnet distributed by the world's most insidious advertising company.

## Be sure to turn off all it's phone-home settings in the settings panel
```
* disable Auto Sign-In
* set default search engine to DuckDuckGo (or anything except Google--lots of additional telemetry gets turned on by default when Google is the default search
engine)
* disable "prediction service to help complete searches and URLs"
* disable "prediction service to load pages more quickly"
* disable "web service to help resolve navigation errors"
* disable "Safe Browsing"
* disable "improve Safe Browsing"
* disable "Do Not Track" header--it really just makes it easier to fingerprint you.
* block third-party cookies
* disable "offer to translate pages"
* disable "show notifications when new printers are detected"
* disable "continue running background apps when Chromium is closed"
```

## Also, set the following in chrome://flags:
```
* Smooth Scrolling: (personal preference)
* UI Layout for the browser's top chrome: set to "Normal" to get the classic Chromium look back
* Identity consistency between browser and cookie jar: set to "Disabled" to keep Google from hijacking any Google login to sign you into Chrome
* SafeSearch URLs reporting: disabled
```

It should go without saying, but don't sign in to Chrome.

Also, Chromium on OpenBSD recently got unveil support. If you run it with --enable-unveil, Chromium will be prevented (at the OS level) from accessing anything other than your ~/Downloads folder.

Installing uBlock Origin is a must--almost all websites crawl without it. Switching to DuckDuckGo, along with unticking all the Google botnet "features" on the settings page, will greatly reduce the amount of telemetry Google collects about you.

Also be sure to install uBlock Origin Extra, which protects you from certain sites that circumvent third-party cookie blocking.

OpenBSD does have packages for Iridium Browser, but it's based on an older Chromium version. You'll get added privacy by using it, since they disable things at compile time that simply can't be turned off in Chromium. However, it's inherently less secure since you won't have the latest patches and security fixes.

Besides, using uBlock, disabling third party cookies, and turning off all the Google stuff will do 90% of what Iridium does.
