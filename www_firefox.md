# Resources
```
https://developer.mozilla.org/en-US/docs/Mozilla/Command_Line_Options
```

# Open profile manager
```
$ firefox --ProfileManager
```
or open Firefox and access about:profiles

# Create firefox profile
```
$ firefox -CreateProfile profile_name profile_dir
$ firefox -CreateProfile JoelUser c:\internet\joelusers-moz-profile
$ firefox -CreateProfile jsEnabled ~/.mozilla/firefox/jsenabled.profile
$ firefox -CreateProfile jsDisabled ~/.mozilla/firefox/jsdisabled.profile
```

# Open new instance
```
$ firefox --new-instance -P jsEnabled
$ firefox --new-instance -P jsDisabled
```

# Open specific profile
```
$ firefox -P jsEnabled
$ firefox -P jsDisabled
```

# Open in private mode
```
$ firefox -private
$ firefox --private-window
```

# Configs in "about:config"
## Disable javascript
```
javascript.enabled false
```
## Disable search from url bar
```
keyword.enabled false
browser.fixup.alternate.enabled false
browser.urlbar.oneOffSearches false
```

## Disable new tab style
```
browser.urlbar.update1 false
```

## Disable pocket extention
```
extensions.pocket.enabled false
```

## Disable webRTC leaks
```
Type "about:config” in the address bar
To disable RTCPeerConnection and protect IP addresses leakage, go to about:config and toggle media.peerconnection.enabled to false.
To disable Media Devices, toggle media.navigator.enabled as well as media.peerconnection.enabled both to false.
```

# Enable Encrypted DNS
```
In preferences, go to General > 'Network Settings' > Settings
Check 'Enable DNS over HTTPS'
Add 'https://dns.quad9.net/dns-query'
```

# Apply privacy settings in user.js
```
$ mkdir -p ~/src
$ cd ~/src
$ git clone https://github.com/arkenfox/user.js.git
$ cp ~/src/user.js/user.js ~/.mozilla/firefox/[profile_directory].default/
```
