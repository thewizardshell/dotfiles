# Neovim Config

<p align="center">
  <img src="https://github.com/user-attachments/assets/0f2834c4-9cd6-4bba-865a-2346835dff6b" alt="Preview" width="800">
</p>

<p align="center">
  <b>A LazyVim-based Neovim configuration for modern development</b>
</p>

---

## Features

- **LazyVim** as the base distribution
- **AI Integration** - Avante, Copilot, Claude
- **Fuzzy Finding** - Telescope + fzf
- **File Navigation** - Oil.nvim
- **Git** - Fugitive, LazyGit integration
- **LSP** - Full language server support
- **Themes** - Catppuccin, Kanagawa, Nord

---

## Requirements

```bash
# Core dependencies
nvim >= 0.10
git
gcc
node >= 18

# CLI tools
fzf
fd
ripgrep
bat
lazygit
```

---

## Installation

```bash
# Backup existing config
mv ~/.config/nvim ~/.config/nvim.bak

# Clone this config
git clone https://github.com/thewizardshell/dotfiles.git ~/dotfiles

# Symlink with stow
cd ~/dotfiles && stow nvim

# Or copy directly
cp -r ~/dotfiles/nvim/.config/nvim ~/.config/nvim
```

Open Neovim and let Lazy install all plugins automatically.

---

## Plugins

| Category | Plugins |
|----------|---------|
| AI | avante, copilot, claude |
| Navigation | oil, telescope, snacks |
| LSP | vtsls, eslint, pyright, prisma, tailwind |
| Git | fugitive, lazygit |
| UI | lualine, incline, notify, catppuccin |
| Editing | blink, multi-cursor, colorizer |
| Markdown | markdown-preview, obsidian |

---

## Keybindings

| Key | Action |
|-----|--------|
| `-` | Open Oil file browser |
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>gg` | LazyGit |

---

## Structure

```
nvim/
├── init.lua
├── lua/
│   ├── config/
│   │   ├── autocmds.lua
│   │   ├── keymaps.lua
│   │   ├── lazy.lua
│   │   └── options.lua
│   └── plugins/
│       └── *.lua
└── lazy-lock.json
```

---

## Notes

- Obsidian plugin requires path configuration in `lua/plugins/obsidian.lua`
- Some LSPs require manual installation via Mason

---

## License

MIT

