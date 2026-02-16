# Project: terminall

## What this is
Learning workspace for terminal tools — not a coding project. No build system, no tests. Files are notes, cheatsheets, and guides. Claude's role here is configuring tools and helping learn them.

## Session rule
After any config change (nvim init.lua, powershell profile, yazi config, new plugin, new keybinding), run `/claude-md-management:revise-claude-md` to capture the change into this file.

## Environment
- **Terminal:** Windows Terminal + PowerShell
- **PowerShell profile:** `C:\Users\havasreti.marton\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1`
- **Yazi config:** `%APPDATA%\yazi\config\yazi.toml` (all files open in nvim)
- **Purpose:** Practice workspace for nvim, fzf, yazi, zoxide, lazygit

## Neovim Setup

- **Config path:** `C:\Users\havasreti.marton\AppData\Local\nvim\init.lua`
- **Plugin directory:** `C:\Users\havasreti.marton\AppData\Local\nvim\pack\plugins\start\`
- **fzf binary:** `C:\Users\havasreti.marton\AppData\Local\Microsoft\WinGet\Packages\junegunn.fzf_Microsoft.Winget.Source_8wekyb3d8bbwe\fzf` (v0.67.0)
- **Colorscheme:** selenized (dark)
- **Plugin manager:** manual (native vim packages in `pack/plugins/start/`)

### Installed plugins
- **fzf-lua** — fuzzy finder (files, buffers, grep)
- **selenized.nvim** — colorscheme

### Key bindings (leader = `\`)
- `\f` — find files (fzf-lua)
- `\b` — switch buffer (fzf-lua)
- `\x` — close current buffer
- `Tab` / `Shift-Tab` — next/prev buffer
- `timeoutlen` set to 2000ms for comfortable leader key usage

### Features
- Buffer tabline at top (always visible)
- Treesitter markdown highlighting
- Line wrapping with breakindent
