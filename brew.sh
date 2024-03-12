#!/usr/bin/env bash

# replacing outdated macos bundled tools with newer versions
brew install bash coreutils grep git curl wget

# neovim and dependencies
brew install neovim ripgrep fd

# nodejs
brew install n

# shell
brew install fish fzf starship

# useful tools
brew install httpie colordiff htop stow

# colima
brew install colima

# terminal font (moved to MonoLisa)
# brew install font-fira-code-nerd-font --cask

# apps
brew install 1password alfred alacritty obsidian
