# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a **chezmoi**-managed dotfiles repository. Chezmoi manages dotfiles by keeping source files here (`~/.local/share/chezmoi`) and applying them to the home directory.

## Key Commands

- `chezmoi apply` — apply changes from this repo to the home directory
- `chezmoi diff` — preview what `chezmoi apply` would change
- `chezmoi add <file>` — add a new dotfile to be managed (copies from home dir into this repo)
- `chezmoi edit <file>` — edit a managed file (e.g., `chezmoi edit ~/.zshrc`)

## Chezmoi Naming Conventions

Files use chezmoi's naming scheme — these are NOT arbitrary prefixes:
- `dot_` prefix → maps to `.` in the target (e.g., `dot_zshrc` → `~/.zshrc`)
- `dot_config/` → `~/.config/`
- `run_once_` prefix → script that chezmoi runs once on first apply (e.g., `run_once_install.sh`)

## What's Managed

- **dot_zshrc** → `~/.zshrc` — shell config (mise, fzf, starship, ghq+fzf integration, zsh plugins)
- **dot_config/starship.toml** → `~/.config/starship.toml` — prompt theme
- **dot_config/mise/config.toml** → `~/.config/mise/config.toml` — runtime version management (Node 24, pnpm)
- **Brewfile** — Homebrew dependencies (used by `run_once_install.sh`)
- **run_once_install.sh** — one-time bootstrap: installs Homebrew, runs Brewfile, installs Claude Code
