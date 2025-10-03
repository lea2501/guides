# opening and closing windows and popovers
```shell
# defaults write -g NSAutomaticWindowAnimationsEnabled -bool false
```

# smooth scrolling
```shell
# defaults write -g NSScrollAnimationEnabled -bool false
```

# showing and hiding sheets, resizing preference windows, zooming windows
# float 0 doesn't work
```shell
# defaults write -g NSWindowResizeTime -float 0.001
```

# opening and closing Quick Look windows
```shell
# defaults write -g QLPanelAnimationDuration -float 0
```

# rubberband scrolling (doesn't affect web views)
```shell
# defaults write -g NSScrollViewRubberbanding -bool false
```

# resizing windows before and after showing the version browser
# also disabled by NSWindowResizeTime -float 0.001
```shell
# defaults write -g NSDocumentRevisionsWindowTransformAnimation -bool false
```

# showing a toolbar or menu bar in full screen
```shell
# defaults write -g NSToolbarFullScreenAnimationDuration -float 0
```

# scrolling column views
```shell
# defaults write -g NSBrowserColumnAnimationSpeedMultiplier -float 0
```

# showing the Dock
```shell
# defaults write com.apple.dock autohide-time-modifier -float 0
# defaults write com.apple.dock autohide-delay -float 0
```

# showing and hiding Mission Control, command+numbers
```shell
# defaults write com.apple.dock expose-animation-duration -float 0
```

# showing and hiding Launchpad
```shell
# defaults write com.apple.dock springboard-show-duration -float 0
# defaults write com.apple.dock springboard-hide-duration -float 0
```

# changing pages in Launchpad
```shell
# defaults write com.apple.dock springboard-page-duration -float 0
```

# at least AnimateInfoPanes
```shell
# defaults write com.apple.finder DisableAllAnimations -bool true
```

# sending messages and opening windows for replies
```shell
# defaults write com.apple.Mail DisableSendAnimations -bool true
# defaults write com.apple.Mail DisableReplyAnimations -bool true
```


# Commands only:
```shell
# defaults write -g NSAutomaticWindowAnimationsEnabled -bool false
# defaults write -g NSScrollAnimationEnabled -bool false
# defaults write -g NSWindowResizeTime -float 0.001
# defaults write -g QLPanelAnimationDuration -float 0
# defaults write -g NSScrollViewRubberbanding -bool false
# defaults write -g NSDocumentRevisionsWindowTransformAnimation -bool false
# defaults write -g NSToolbarFullScreenAnimationDuration -float 0
# defaults write -g NSBrowserColumnAnimationSpeedMultiplier -float 0
# defaults write com.apple.dock autohide-time-modifier -float 0
# defaults write com.apple.dock autohide-delay -float 0
# defaults write com.apple.dock expose-animation-duration -float 0
# defaults write com.apple.dock springboard-show-duration -float 0
# defaults write com.apple.dock springboard-hide-duration -float 0
# defaults write com.apple.dock springboard-page-duration -float 0
# defaults write com.apple.finder DisableAllAnimations -bool true
# defaults write com.apple.Mail DisableSendAnimations -bool true
# defaults write com.apple.Mail DisableReplyAnimations -bool true
```

# To revert changes:
```shell
# defaults delete -g NSAutomaticWindowAnimationsEnabled
# defaults delete -g NSScrollAnimationEnabled
# defaults delete -g NSWindowResizeTime
# defaults delete -g QLPanelAnimationDuration
# defaults delete -g NSScrollViewRubberbanding
# defaults delete -g NSDocumentRevisionsWindowTransformAnimation
# defaults delete -g NSToolbarFullScreenAnimationDuration
# defaults delete -g NSBrowserColumnAnimationSpeedMultiplier
# defaults delete com.apple.dock autohide-time-modifier
# defaults delete com.apple.dock autohide-delay
# defaults delete com.apple.dock expose-animation-duration
# defaults delete com.apple.dock springboard-show-duration
# defaults delete com.apple.dock springboard-hide-duration
# defaults delete com.apple.dock springboard-page-duration
# defaults delete com.apple.finder DisableAllAnimations
# defaults delete com.apple.Mail DisableSendAnimations
# defaults delete com.apple.Mail DisableReplyAnimations
```

# Dialogs animations:
Mac OS X also has dialog boxes, such as the 'Save As'-box (CMD+SHIFT+S) or the 'Print'-box (CMD+P). You can tweak the speed at which all of these boxes appear by using these commands:

# Instant:
```shell
# defaults write NSGlobalDomain NSWindowResizeTime .001
```

# Fast:
```shell
# defaults write NSGlobalDomain NSWindowResizeTime .1
```

# Default (0.2 seconds):
```shell
# defaults delete NSGlobalDomain NSWindowResizeTime
```

1 = 1 second. To see the difference you have to re-launch an app such as Terminal and summon a dialog box by pressing CMD+S ('Save') for example. You can find more command-line tweaks in defaults-write.com
