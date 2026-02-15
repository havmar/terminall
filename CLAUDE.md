# Project: terminall

## Environment
- **Terminal:** Windows Terminal + PowerShell
- **PowerShell profile:** `C:\Users\havasreti.marton\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1`
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
