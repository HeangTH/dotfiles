# Sets reasonable macOS defaults.
#
# Or, in other words, set shit how I like in macOS.
#
# The original idea (and a couple settings) were grabbed from:
#   https://github.com/mathiasbynens/dotfiles/blob/master/.macos
#
# Run ./set-defaults.sh and you'll be good to go.

###############################################################################
# Finder                                                                      #
###############################################################################

## Show hidden files by default
# defaults write com.apple.Finder AppleShowAllFiles -bool true

## Show files' extension by default
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

## Stop writing DS_Store file
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Disable press-and-hold for keys in favor of key repeat.
defaults write -g ApplePressAndHoldEnabled -bool false

# Use AirDrop over every interface. srsly this should be a default.
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Always open everything in Finder's colume view. This is important.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show the ~/Library folder.
chflags nohidden ~/Library

# Set a really fast key repeat.
defaults write NSGlobalDomain KeyRepeat -int 1

# Set the Finder prefs for showing a few different volumes on the Desktop.
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Run the screensaver if we're in the bottom-left hot corner.
#defaults write com.apple.dock wvous-bl-corner -int 5
#defaults write com.apple.dock wvous-bl-modifier -int 0

# Hide Safari's bookmark bar.
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Set up Safari for development.
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# show battery percentage
defaults write com.apple.menuextra.battery ShowPercent YES

# Turn Off “Application Downloaded from Internet”
defaults write com.apple.LaunchServices LSQuarantine -bool NO

# Disable shadow and change to .jpeg of Screen Capture and disable preview
defaults write com.apple.screencapture disable-shadow -bool true
defaults write com.apple.screencapture type jpg
defaults write com.apple.screencapture show-thumbnail -bool false

#Disable Screen Capture and Empty Trash Sound Effects
defaults write com.apple.systemsound "com.apple.sound.uiaudio.enabled" -int 0

#Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

#Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true
