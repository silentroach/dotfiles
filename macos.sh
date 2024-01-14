#!/usr/bin/env bash

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Set sidebar icon size to Small
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2

# Reducing repeat delays
defaults write -g InitialKeyRepeat -int 15
defaults write -g KeyRepeat -int 2
