# Javascript disabled
```
$ surf -bdfgIs "https://www.startpage.com/do/mypage.pl?prfe=36c84513558a2d34bf0d89ea505333ad424dd4dcfb7998c9c11ce01b42a6c15c9ce16507e8cd9d81984abfd0db70840b"
```
# Javascript enabled
```
$ surf -bdfgIS "https://www.startpage.com/do/mypage.pl?prfe=36c84513558a2d34bf0d89ea505333ad424dd4dcfb7998c9c11ce01b42a6c15c9ce16507e8cd9d81984abfd0db70840b"
```

Setting useragent and cookies to 'no third party cookies'
Javascript disabled
```
$ surf -bdfgIs -a @ -u "Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.25 Safari/537.36 Edg/93.0.961.18" "https://www.startpage.com/do/mypage.pl?prfe=36c84513558a2d34bf0d89ea505333ad424dd4dcfb7998c9c11ce01b42a6c15c9ce16507e8cd9d81984abfd0db70840b"
```
Javascript enabled
```
$ surf -bdfgIS -a @ -u "Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.25 Safari/537.36 Edg/93.0.961.18" "https://www.startpage.com/do/mypage.pl?prfe=36c84513558a2d34bf0d89ea505333ad424dd4dcfb7998c9c11ce01b42a6c15c9ce16507e8cd9d81984abfd0db70840b"
```

OPTIONS
```
-b - Disable Scrollbars
-B - Enable Scrollbars
-d - Disable the disk cache.
-D - Enable the disk cache.
-f - Start surf in windowed mode (not fullscreen).
-F - Start surf in fullscreen mode.
-g - Disable giving the geolocation to websites.
-G - Enable giving the geolocation to websites.
-i - Disable Images
-I - Enable Images
-s - Disable Javascript
-S - Enable Javascript
-u useragent
  -u "Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.25 Safari/537.36 Edg/93.0.961.18"
-z zoomlevel
-a cookiepolicies
  "A" meaning to accept all cookies, 
  "a" to denyall cookies
  "@" no third party cookies.
```

USAGE
```
Escape Stops loading current page or stops download.
Ctrl-h - Walks back the history.
Ctrl-l - Walks forward the history.
Ctrl-Shift-k or Ctrl-+ - Zooms page in.
Ctrl-Shift-j or Ctrl-- - Zooms page out.
Ctrl-Shift-q - Resets Zoom
Ctrl-f and Ctrl-/ - Opens the search-bar.
Ctrl-n Go to next search result.
Ctrl-Shift-n - Go to previous search result.
Ctrl-g - Opens the URL-bar (requires dmenu installed).
Ctrl-Shift-p - Calls Printpage Dialog.
Ctrl-r - Reloads the website.
Ctrl-Shift-r - Reloads the website without using the cache.
Ctrl-y Copies current URI to primary selection.
Ctrl-t Display the current TLS certificate in a popup window.
Ctrl-p Loads URI from primary selection.
Ctrl-Shift-o - Open the Web Inspector (Developer Tools) window for the current page.
Ctrl-Shift-v - Toggle the enabling of plugins on that surf instance. This will reload the page.
F11 - Toggle fullscreen mode.
```

# Using ad blocking
## zerohosts
```
$ mkdir ~/src
$ cd ~/src
$ curl -OL "https://si3t.ch/code/OpenBSD-stuff/zerohosts"
(edit the script file to specify download tool)
$ chmod +x zerohosts
$ doas cp /etc/hosts /etc/hosts.bak
$ ./zerohosts /etc/hosts
```
## Firejail
```
$ firejail --noprofile --hosts-file="~/etc/hosts" surf -bdfgIS "https://searx.tiekoetter.com/"
```

# Dark CSS theme
Put the file in ~/.surf/styles/default.css to get a dark themed surf. It uses the same CSS as vimb's dark mode.
It makes everything dark gray and makes images opacity lower unless you hover over them.
```
*,div,pre,textarea,body,input,td,tr,p {
    background-color: #202020 !important;
    background-image: none !important;
    color: #bbbbbb !important;
}
h1,h2,h3,h4 {
    background-color: #202020 !important;
    color: #b8ddea !important;
}
img {
    opacity: .5;
}
img:hover {
    opacity: 1;
}
```

# No ads css
Add this lines to ~/.surf/styles/default.css file to remove ads in startpage.com search engine.
```
#bottom-result-container #spon_links { display: none !important; }
#bottom-result-container #sponsored_csa1 { display: none !important; }
#bottom-result-container #sponsored_csa2 { display: none !important; }
```
