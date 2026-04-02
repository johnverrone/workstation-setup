# Workstation Setup

Automated setup for a fresh macOS machine. One script to go from a clean install to a fully configured development environment.

## Quick Start

```bash
git clone https://github.com/johnverrone/workstation-setup.git ~/dev/workstation-setup
cd ~/dev/workstation-setup
./setup.sh
```

> On a fresh Mac, running `git` for the first time will prompt you to install Xcode Command Line Tools. Accept the prompt, wait for it to finish, then run the clone command again.

The script will prompt for your sudo password upfront, then for your git name and email partway through. Everything else is automatic.

## What It Does

The setup runs these steps in order:

### 1. Xcode Command Line Tools (`scripts/xcode-clt.sh`)

Ensures Xcode CLT is installed, which provides `git`, `clang`, and other build essentials. If not present, triggers the install and waits for it to complete.

### 2. Homebrew (`scripts/homebrew.sh`)

Installs [Homebrew](https://brew.sh) if not present and adds it to PATH for the current session. Then updates and upgrades existing packages.

### 3. Dotfiles (`scripts/dotfiles.sh`)

Clones [johnverrone/dotfiles](https://github.com/johnverrone/dotfiles) as a bare repo to `~/.cfg` and checks out config files into `$HOME`. Any conflicting files (e.g. the default `.zshrc`) are backed up to `~/.dotfiles-backup/` before checkout.

This provides:

- **Shell** — `.zshrc`, `.zshenv`, `.zprofile`, `.zpreztorc`, `.zlogin`, `.zlogout`
- **Neovim** — Full LazyVim configuration in `.config/nvim/`
- **Tmux** — `.tmux.conf` with Catppuccin theme
- **WezTerm** — `.wezterm.lua`
- **Starship** — `.config/starship.toml` prompt configuration
- **Git** — `.gitconfig_base` with aliases and push/init settings
- **Brewfile** — `.Brewfile` declaring all packages and apps
- **Scripts** — `tmux-session` and `tmux-sessionizer` in `.local/bin/`

After setup, manage dotfiles with the `config` alias (e.g. `config add`, `config commit`, `config push`).

### 4. Brew Bundle (`scripts/brew-bundle.sh`)

Installs everything declared in `~/.Brewfile`:

**CLI tools** — bat, direnv, docker, eza, fd, fzf, gh, git, go, jq, lnav, lua-language-server, neovim, opencode, bun, parallel, pnpm, ripgrep, starship, sqlc, tmux, uv, wget, zoxide

**Apps** — Arc, Discord, Figma, Notion, OBS, Obsidian, Raycast, Rectangle, Slack, Spotify, VS Code, WezTerm

**Fonts** — Caskaydia Cove, Hack, Iosevka, Maple Mono (all Nerd Font variants)

### 5. NVM (`scripts/nvm.sh`)

Installs [NVM](https://github.com/nvm-sh/nvm) (Node Version Manager) and the latest LTS version of Node.js. NVM is lazy-loaded in `.zshrc` so it doesn't slow down shell startup.

### 6. Zsh (`scripts/zsh.sh`)

Installs [Prezto](https://github.com/sorin-ionescu/prezto) (zsh framework) and sets zsh as the default shell.

### 7. Tmux (`scripts/tmux.sh`)

Installs [TPM](https://github.com/tmux-plugins/tpm) (Tmux Plugin Manager). After setup, open tmux and press `prefix + I` to install plugins.

### 8. Git (`scripts/git.sh`)

Prompts for your name and email, then sets them as `git config --global`. Aliases and other settings are already provided by the dotfiles `~/.gitconfig_base` (included via `~/.gitconfig`).

### 9. macOS Defaults (`scripts/macos-defaults.sh`)

Applies system preferences:

- **Dock** — autohide, minimize to app icon, no recent apps, small icons (33px) with magnification (128px), disable space reordering, group windows by app in Expose
- **Finder** — column view as default
- **Keyboard** — fast key repeat (2) and short initial delay (25)

## Post-Setup

A few things that need manual attention after the script finishes:

- **Tmux plugins** — Open tmux and press `prefix + I` to install plugins (resurrect, yank, catppuccin)
- **Neovim** — Open nvim and let LazyVim install plugins automatically on first launch
- **Raycast** — Import settings/extensions manually
- **SSH key** — Generate a new key: `ssh-keygen -t ed25519`
- **Log out/restart** — Some macOS defaults and shell changes require a fresh session
