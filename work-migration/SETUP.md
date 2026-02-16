# Work Computer Setup

## 1. Install tools
winget install junegunn.fzf
winget install ajeetdsouza.zoxide
winget install sxyazi.yazi
winget install Neovim.Neovim
winget install jesseduffield.lazygit

## 2. Copy configs to these paths

| File in this folder              | Destination on work PC                                                              |
|----------------------------------|-------------------------------------------------------------------------------------|
| `powershell-profile.ps1`        | `~\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1`                    |
| `nvim\init.lua`                 | `%LOCALAPPDATA%\nvim\init.lua`                                                      |
| `nvim\plugins\*`                | `%LOCALAPPDATA%\nvim\pack\plugins\start\`                                           |
| `yazi\yazi.toml`                | `%APPDATA%\yazi\config\yazi.toml`                                                   |
| `windows-terminal\settings.json`| `%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json` |
| `.gitconfig`                    | `~\.gitconfig` (update name/email if using different work identity)                 |

## 3. After copying
- Restart Windows Terminal
- Open PowerShell, run `nvim` to verify plugins load
- Test: `\f` (find files), `\b` (buffers), `yazi`, `z <folder>`
