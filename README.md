# dotfiles

Personal configuration files for a minimalist development environment focused on visibility, flexibility, and efficiency.

<p align="center">
  <img src="screenshots/preview.png" alt="Desktop Preview" width="800">
</p>

---

## Table of Contents

- [Philosophy](#philosophy)
- [Workflow](#workflow)
- [What's Included](#whats-included)
- [Requirements](#requirements)
- [Installation](#installation)
- [Configuration Details](#configuration-details)
- [Keybindings Reference](#keybindings-reference)

---

## Philosophy

This setup prioritizes:

- **Visibility** - Everything relevant should be visible at a glance, no hidden states
- **Flexibility** - Quick context switching without losing focus
- **Minimalism** - Only what's necessary, nothing more

---

## Workflow

My daily workflow revolves around tmux as the central hub for all terminal operations.

### Terminal Session Management

```
+------------------------------------------------------------------+
|  ghostty (auto-attaches to tmux)                                 |
|  +------------------------------------------------------------+  |
|  |  nvim (LazyVim)                                            |  |
|  |  - Main editing area                                       |  |
|  |  - Oil.nvim for file navigation (-)                        |  |
|  |  - CodeCompanion for AI assistance                         |  |
|  +------------------------------------------------------------+  |
|                                                                  |
|  Alt+G -> Floating scratch panel (servers: npm/go/python)        |
|                                                                  |
|  +------------------------+  +-----------------------------+     |
|  | Prefix + -             |  | Prefix + |                  |     |
|  | Additional server      |  | Free panel (commands, AI)  |     |
|  +------------------------+  +-----------------------------+     |
+------------------------------------------------------------------+
```

### Typical Session

1. Open ghostty - automatically attaches to existing tmux session or creates new one
2. Main pane runs nvim with the project
3. `Alt+G` opens a floating scratch session for running dev servers
4. If more processes are needed: `Ctrl+a -` splits horizontally for another server
5. `Ctrl+a |` splits vertically for a free panel (git commands, claude-code, etc.)

This layout keeps all processes visible while maintaining focus on the code.

---

## What's Included

| Package   | Description                                    |
|-----------|------------------------------------------------|
| zsh       | Shell with oh-my-zsh, powerlevel10k, and plugins |
| tmux      | Terminal multiplexer with catppuccin theme     |
| nvim      | LazyVim configuration                          |
| i3        | Tiling window manager with catppuccin          |
| polybar   | Status bar                                     |
| rofi      | Application launcher                           |
| ghostty   | GPU-accelerated terminal                       |
| git       | Git configuration                              |
| fzf       | Fuzzy finder integration                       |
| lazygit   | Terminal UI for git                            |
| btop      | System monitor                                 |
| cava      | Audio visualizer                               |
| neofetch  | System info display                            |
| zed       | Code editor settings                           |

---

## Requirements

### Core Dependencies

```bash
# Package manager
sudo apt install stow git zsh tmux

# Terminal
# Install ghostty from https://ghostty.org

# Window manager (optional, for i3 setup)
sudo apt install i3 polybar rofi feh
```

### Shell Setup

```bash
# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

### Tmux Plugins

```bash
# TPM (Tmux Plugin Manager)
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Catppuccin theme
git clone https://github.com/catppuccin/tmux.git ~/.tmux/plugins/tmux
```

### Fonts

Install a Nerd Font for icons to display correctly:

```bash
# Example: FiraCode Nerd Font
# Download from https://www.nerdfonts.com/font-downloads
```

---

## Installation

### Full Installation

Clone and stow all packages:

```bash
git clone git@github.com:thewizardshell/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow zsh tmux git fzf nvim i3 polybar rofi ghostty cava btop lazygit neofetch zed
```

### Selective Installation

Install only specific packages:

```bash
cd ~/dotfiles

# Just shell configuration
stow zsh fzf

# Just tmux
stow tmux

# Just neovim
stow nvim

# Window manager setup
stow i3 polybar rofi
```

### Uninstall a Package

```bash
cd ~/dotfiles
stow -D package_name
```

### Update

Pull changes and restow:

```bash
cd ~/dotfiles
git pull
stow -R zsh tmux nvim  # restow packages
```

---

## Configuration Details

### Tmux

**Prefix:** `Ctrl+a`

Key features:
- Floating scratch session for running dev servers
- Catppuccin mocha theme
- Status bar showing application, session, and directory
- vim-tmux-navigator for seamless pane navigation
- Session persistence with tmux-resurrect and tmux-continuum
- Mouse support enabled

Plugins:
- tpm (plugin manager)
- tmux-sensible
- vim-tmux-navigator
- tmux-yank
- tmux-resurrect
- tmux-continuum
- tmux-plugin-sysstat
- tmux-prefix-highlight
- tmux-fzf

### Zsh

Configuration:
- Theme: powerlevel10k
- Framework: oh-my-zsh

Plugins:
- git
- zsh-autosuggestions
- zsh-syntax-highlighting
- fzf
- docker
- npm
- python
- z (directory jumping)

### Neovim

Based on LazyVim with additional customizations:

- Oil.nvim for file navigation
- CodeCompanion for AI assistance
- Minty color tools (Shades, Huefy)

### i3

- Mod key: Super (Windows key)
- Terminal: ghostty
- Launcher: rofi
- Theme: Catppuccin Mocha
- Status bar: polybar

### Ghostty

- Theme: Catppuccin Mocha
- Font: FiraCode Nerd Font (size 12)
- Background opacity: 95%
- Auto-starts tmux on launch

### Rofi

- Theme: Custom dark with pink accents
- Modes: drun, run, window
- Font: JetBrains Mono 12

### Polybar

- Theme: Catppuccin Mocha
- Modules: workspaces, window title, filesystem, volume, memory, cpu, wifi, time

---

## Keybindings Reference

### Tmux

| Key              | Action                          |
|------------------|---------------------------------|
| `Alt+G`          | Toggle floating scratch session |
| `Ctrl+a -`       | Split pane horizontally         |
| `Ctrl+a \|`      | Split pane vertically           |
| `Ctrl+a c`       | New window                      |
| `Ctrl+a x`       | Kill pane                       |
| `Ctrl+a X`       | Kill window                     |
| `Alt+h/j/k/l`    | Navigate panes                  |
| `Ctrl+a >`       | Swap pane right                 |
| `Ctrl+a <`       | Swap pane left                  |
| `Ctrl+a S`       | New named session               |
| `Ctrl+a B`       | List sessions                   |
| `Prefix+F`       | tmux-fzf menu                   |

### i3

| Key                  | Action                    |
|----------------------|---------------------------|
| `Super+Return`       | Open terminal (ghostty)   |
| `Super+d`            | Open rofi launcher        |
| `Super+Shift+q`      | Kill focused window       |
| `Super+h/v`          | Split horizontal/vertical |
| `Super+f`            | Toggle fullscreen         |
| `Super+1-0`          | Switch to workspace       |
| `Super+Shift+1-0`    | Move window to workspace  |
| `Super+r`            | Resize mode               |
| `Super+Shift+r`      | Restart i3                |

### Neovim (Custom)

| Key              | Action                     |
|------------------|----------------------------|
| `-`              | Open Oil file browser      |
| `<leader>ac`     | Toggle AI chat             |
| `<leader>an`     | New AI chat                |
| `<leader>aa`     | AI actions menu            |
| `<leader>ae`     | AI explain selection       |
| `<leader>cps`    | Color shades picker        |
| `<leader>cph`    | Huefy color picker         |

---

## Directory Structure

```
dotfiles/
├── btop/           # System monitor config
├── cava/           # Audio visualizer config
├── fzf/            # Fuzzy finder config
├── ghostty/        # Terminal config
├── git/            # Git config
├── i3/             # Window manager config
├── lazygit/        # Git TUI config
├── neofetch/       # System info config
├── nvim/           # Neovim config (LazyVim)
├── polybar/        # Status bar config
├── rofi/           # Launcher config
├── tmux/           # Terminal multiplexer config
├── zed/            # Zed editor config
└── zsh/            # Shell config
```

---

## License

MIT
