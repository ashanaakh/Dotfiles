# Play iOS charging sound when MagSafe is connected
defaults write com.apple.PowerChime ChimeOnAllHardware -bool true && \
    open /System/Library/CoreServices/PowerChime.app

# Reveal IP address, hostname, OS version, etc. when clicking the clock
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

# Disable auto-correct
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false

killall SystemUIServer

## Finder

# Finder: allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Show the ~/Library folder
chflags nohidden ~/Library

killall Finder

## Dock
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock tilesize -int 70

killall Dock
