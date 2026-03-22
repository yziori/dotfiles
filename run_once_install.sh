#!/bin/bash

# Homebrew
if ! command -v brew &> /dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Brewfile
brew bundle --file ~/.local/share/chezmoi/Brewfile

# Claude Code
curl -fsSL https://claude.ai/install.sh | bash