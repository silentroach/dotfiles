#!/usr/bin/env bash

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Set sidebar icon size to Small
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2

# Reducing repeat delays
defaults write -g InitialKeyRepeat -int 15
defaults write -g KeyRepeat -int 2

# Menubar clock widget
defaults write com.apple.menuextra.clock "IsAnalog" -bool TRUE
defaults write com.apple.menuextra.clock "ShowDayOfWeek" -bool FALSE

# Dock
defaults write com.apple.dock "tilesize" -int "42"

# Do not show recent apps in dock
defaults write com.apple.dock show-recents -bool FALSE

# Columns view by default
defaults write com.apple.finder "FXPreferredViewStyle" -string "clmv
