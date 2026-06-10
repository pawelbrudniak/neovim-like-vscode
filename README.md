# Neovim like VS Code

Personal Neovim configuration focused on creating a fast, keyboard-driven and VS Code-like development environment.

This setup is built step by step to keep the configuration readable, maintainable and easy to debug. The goal is not to create a huge prebuilt distribution, but to understand every part of the editor and gradually turn Neovim into a practical IDE.

## Goals

- Build a clean Neovim configuration in Lua
- Recreate the most useful VS Code features
- Keep the setup modular and easy to maintain
- Use Neovim as a serious editor for development and QA-related work
- Prepare the environment for working with AI coding agents such as Codex CLI

## Current Features

### Core

- Lua-based configuration
- Modular file structure
- Custom keymaps
- System clipboard support
- Relative line numbers
- Mouse support
- Better splits and scrolling behavior

### Plugin Manager

- `lazy.nvim` for plugin management

### UI

- `catppuccin` colorscheme
- `lualine.nvim` statusline
- `bufferline.nvim` buffer tabs
- `which-key.nvim` keybinding helper

### File Navigation

- `neo-tree.nvim` file explorer
- `telescope.nvim` fuzzy finder
- Fast file search
- Project-wide text search
- Buffer search
- Command search
- Help search

### Syntax and Code Intelligence

- `nvim-treesitter` for better syntax highlighting
- Language Server Protocol support
- `mason.nvim` for managing LSP servers
- `mason-lspconfig.nvim`
- `nvim-lspconfig`

Configured LSP servers:

- Lua
- Bash
- JSON
- YAML
- Python
- TypeScript / JavaScript
- HTML
- CSS

### Tool Management

- `mason.nvim`
- `mason-lspconfig.nvim`
- `mason-tool-installer.nvim`

Mason is used to manage LSP servers and external development tools such as formatters.

Automatically managed tools include:

- Lua Language Server
- Bash Language Server
- JSON LSP
- YAML Language Server
- Pyright
- TypeScript Language Server
- HTML LSP
- CSS LSP
- Stylua
- Shfmt
- Black
- Prettier

### Autocomplete

- `nvim-cmp`
- LSP completion
- Buffer completion
- Path completion
- Snippet support with `LuaSnip`

### Formatting

- `conform.nvim`
- Format on save
- Manual formatting shortcut

Configured formatters:

- Lua: `stylua`
- Bash: `shfmt`
- Python: `black`
- JavaScript / TypeScript / HTML / CSS / JSON / YAML / Markdown: `prettier`

### Diagnostics

- `trouble.nvim`
- `todo-comments.nvim`
- Workspace diagnostics panel
- Document diagnostics panel
- Quickfix list support
- Location list support
- TODO/FIXME highlighting and search
- TODO/FIXME list through Trouble
- VS Code-like Problems panel workflow

### Git

- `gitsigns.nvim`
- Git change indicators
- Hunk preview
- Hunk reset
- Hunk staging
- Line blame
- File diff

### Git UI

- `lazygit.nvim`
- LazyGit integration inside Neovim
- Git status, diff, stage, commit, push and pull from a terminal UI
- Quick access to repository changes without leaving the editor

### Integrated Terminal

- `toggleterm.nvim`
- Horizontal terminal
- Floating terminal
- Vertical terminal
- Terminal workflow prepared for Codex CLI usage
- Quick terminal access without leaving Neovim

## Keybindings

The leader key is set to `Space`.

### General

| Keybinding  | Action                 |
| ----------- | ---------------------- |
| `Space + w` | Save file              |
| `Space + q` | Quit                   |
| `Space + x` | Close current buffer   |
| `Esc`       | Clear search highlight |

### File Explorer

| Keybinding  | Action               |
| ----------- | -------------------- |
| `Space + e` | Toggle file explorer |
| `Space + o` | Open file explorer   |

### Search

| Keybinding      | Action                 |
| --------------- | ---------------------- |
| `Space + f + f` | Find files             |
| `Space + f + g` | Search text in project |
| `Space + f + b` | Find open buffers      |
| `Space + f + h` | Search help            |
| `Space + f + c` | Search commands        |

### Splits

| Keybinding      | Action               |
| --------------- | -------------------- |
| `Space + s + v` | Vertical split       |
| `Space + s + h` | Horizontal split     |
| `Ctrl + h`      | Move to left window  |
| `Ctrl + j`      | Move to lower window |
| `Ctrl + k`      | Move to upper window |
| `Ctrl + l`      | Move to right window |

### Buffers

| Keybinding    | Action          |
| ------------- | --------------- |
| `Tab`         | Next buffer     |
| `Shift + Tab` | Previous buffer |

### LSP

| Keybinding      | Action               |
| --------------- | -------------------- |
| `K`             | Hover documentation  |
| `gd`            | Go to definition     |
| `gD`            | Go to declaration    |
| `gr`            | Go to references     |
| `gi`            | Go to implementation |
| `Space + r + n` | Rename symbol        |
| `Space + c + a` | Code action          |
| `Space + d`     | Show diagnostic      |
| `[d`            | Previous diagnostic  |
| `]d`            | Next diagnostic      |
| `Space + l + f` | Format file          |

### Diagnostics

| Keybinding      | Action                |
| --------------- | --------------------- |
| `Space + x + x` | Workspace diagnostics |
| `Space + x + d` | Document diagnostics  |
| `Space + x + q` | Quickfix list         |
| `Space + x + l` | Location list         |
| `Space + x + t` | TODO/FIXME list       |

### Git

| Keybinding              | Action                        |
| ----------------------- | ----------------------------- |
| `Space + g + g`         | Open LazyGit                  |
| `Space + g + Shift + g` | Open LazyGit for current file |
| `]g`                    | Next Git hunk                 |
| `[g`                    | Previous Git hunk             |
| `Space + g + p`         | Preview Git hunk              |
| `Space + g + r`         | Reset Git hunk                |
| `Space + g + s`         | Stage Git hunk                |
| `Space + g + u`         | Undo stage Git hunk           |
| `Space + g + b`         | Git blame line                |
| `Space + g + B`         | Toggle Git blame              |
| `Space + g + d`         | Git diff current file         |

LazyGit keybindings:

| Keybinding              | Action                        |
| ----------------------- | ----------------------------- |
| `Space + g + g`         | Open LazyGit                  |
| `Space + g + Shift + g` | Open LazyGit for current file |

Terminal keybindings:

| Keybinding      | Action                     |
| --------------- | -------------------------- |
| `Space + t + t` | Toggle horizontal terminal |
| `Space + t + f` | Toggle floating terminal   |
| `Space + t + v` | Toggle vertical terminal   |
| `Esc`           | Exit terminal mode         |

## Project Structure

```text
~/.config/nvim/
├── init.lua
├── lua/
│   └── paul/
│       ├── core/
│       │   ├── options.lua
│       │   ├── keymaps.lua
│       │   └── lsp.lua
│       ├── config/
│       │   └── lazy.lua
│       └── plugins/
│           ├── bufferline.lua
│           ├── cmp.lua
│           ├── colorscheme.lua
│           ├── formatting.lua
│           ├── gitsigns.lua
│           ├── lsp.lua
│           ├── lualine.lua
│           ├── lazygit.lua
│           ├── mason-tools.lua
│           ├── neo-tree.lua
│           ├── telescope.lua
│           ├── terminal.lua
│           ├── treesitter.lua
│           ├── todo-comments.lua
│           ├── trouble.lua
│           └── which-key.lua
└── README.md
```

## Requirements

Recommended system packages on Arch / CachyOS:

```bash
sudo pacman -S --needed \
  neovim \
  git \
  ripgrep \
  fd \
  nodejs \
  npm \
  python \
  python-pip \
  unzip \
  curl \
  base-devel \
  gcc \
  tree-sitter-cli \
  stylua \
  shfmt \
  prettier \
  python-black
```

## Installation

Clone this repository into the Neovim configuration directory:

```bash
git clone https://github.com/YOUR_USERNAME/YOUR_REPOSITORY.git ~/.config/nvim
```

Start Neovim:

```bash
nvim
```

Then run:

```vim
:Lazy sync
```

After plugin installation, restart Neovim.

## Repository Safety

This repository contains only Neovim configuration files.

It should not contain:

- API keys
- access tokens
- passwords
- Codex authentication files
- OpenAI authentication files
- local `.env` files

A `.gitignore` file is included to reduce the risk of accidentally committing local secrets or credentials.

## Notes

This configuration is still under active development.

Planned additions:

- debugging support
- better Markdown support
- test runner integration
- Codex CLI workflow
- QA-focused shortcuts and project templates

## Purpose

This repository is part of my personal learning and development workflow. It is designed to help me build a practical, transparent and maintainable Neovim setup instead of relying on a large prebuilt configuration that I do not fully understand.
