#!/usr/bin/env bash

# replacing outdated macos bundled tools with newer versions
brew install bash coreutils grep git curl wget

# fish_add_path /opt/homebrew/opt/curl/bin

# neovim and dependencies
brew install neovim ripgrep fd

# nodejs
brew install n

# shell
brew install fish fzf starship tmux eza

# useful tools
brew install httpie colordiff htop stow

# colima + docker
brew install colima docker docker-compose

# terminal font (moved to MonoLisa)
# brew install font-fira-code-nerd-font --cask

# apps
brew install 1password alfred wezterm obsidian
