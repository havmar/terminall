# Setup Guide

How to recreate this terminal-centric environment from scratch on a new Windows machine.

## 1. Package Manager

Windows comes with `winget`. Install everything through it.

## 2. Core Tools

```powershell
winget install Git.Git
winget install Neovim.Neovim
winget install junegunn.fzf
winget install sharkdp.bat
winget install sxyazi.yazi
winget install jqlang.jq
winget install 7zip.7zip
winget install GitHub.cli
winget install Python.Python.3.13
winget install OpenJS.NodeJS.22
```

## 3. PowerShell Profile

Path: `$HOME\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1`

```powershell
$env:EDITOR = "nvim"
$env:VISUAL = "nvim"

Import-Module PSFzf
$env:FZF_DEFAULT_OPTS = "--preview 'bat --color=always --style=numbers --line-range :500 {}' --preview-window=up"

function prompt {
    $ESC = [char]27
    "$ESC]9;9;$($PWD.Path)$ESC\" + "PS $($PWD.Path)> "
}

function zip($path) { tar -cf "$($path.TrimEnd('/\')).zip" -a $path }
function unzip($path) { tar -xf $path -C (New-Item -Force -ItemType Directory ([IO.Path]::GetFileNameWithoutExtension($path))) }
```

Then install the PSFzf module:

```powershell
Install-Module PSFzf -Scope CurrentUser
```

## 4. Neovim

### Config

Place at `$HOME\AppData\Local\nvim\init.lua`:

```lua
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.timeoutlen = 2000

vim.o.background = "dark"
vim.cmd.colorscheme("selenized")

require('fzf-lua').setup({
  winopts = {
    preview = {
      layout = 'vertical',
    },
  },
})

vim.keymap.set('n', '<leader>f', require('fzf-lua').files, { desc = 'Find files' })
vim.keymap.set('n', '<leader>b', require('fzf-lua').buffers, { desc = 'Switch buffer' })

vim.opt.showtabline = 2
vim.opt.tabline = '%!v:lua.Tabline()'

function Tabline()
  local s = ''
  for _, buf in ipairs(vim.api.nvim_list_bufs()) do
    if vim.api.nvim_buf_is_loaded(buf) and vim.bo[buf].buflisted then
      local name = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(buf), ':t')
      if name == '' then name = '[No Name]' end
      if buf == vim.api.nvim_get_current_buf() then
        s = s .. ' %#TabLineSel# ' .. name .. ' '
      else
        s = s .. ' %#TabLine# ' .. name .. ' '
      end
    end
  end
  return s .. '%#TabLineFill#'
end

vim.keymap.set('n', '<Tab>', ':bnext<CR>', { silent = true })
vim.keymap.set('n', '<S-Tab>', ':bprev<CR>', { silent = true })
vim.keymap.set('n', '<leader>x', ':bd<CR>', { silent = true })

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown" },
  callback = function(args)
    vim.treesitter.start(args.buf, "markdown")
  end,
})
```

### Plugins (manual, no plugin manager)

Clone into `$HOME\AppData\Local\nvim\pack\plugins\start\`:

```powershell
git clone https://github.com/ibhagwan/fzf-lua "$HOME\AppData\Local\nvim\pack\plugins\start\fzf-lua"
git clone https://github.com/calind/selenized.nvim "$HOME\AppData\Local\nvim\pack\plugins\start\selenized.nvim"
```

### Key Bindings (leader = `\`)

| Key | Action |
|-----|--------|
| `\f` | Find files |
| `\b` | Switch buffer |
| `\x` | Close buffer |
| `Tab` / `Shift-Tab` | Next/prev buffer |

## 5. Yazi

### Config

Place at `%APPDATA%\yazi\config\yazi.toml`:

```toml
[opener]
edit = [
  { run = 'nvim "%*"', block = true, desc = "Open in nvim" },
]

[open]
rules = [
  { name = "*/", use = [ "edit", "reveal" ] },
  { mime = "text/*", use = [ "edit" ] },
  { mime = "application/json", use = [ "edit" ] },
  { mime = "*/xml", use = [ "edit" ] },
  { mime = "*/javascript", use = [ "edit" ] },
  { mime = "*/x-shellscript", use = [ "edit" ] },
  { mime = "*/x-toml", use = [ "edit" ] },
  { mime = "*/x-yaml", use = [ "edit" ] },
  { name = "*", use = [ "edit" ] },
]
```

This makes all files open in nvim instead of the Windows default (VS Code). Folders navigate normally.

### Key Bindings

| Key | Action |
|-----|--------|
| `h` / `l` | Parent / enter directory |
| `j` / `k` | Move down / up |
| `Space` | Toggle select |
| `y` | Yank (copy) |
| `x` | Cut |
| `p` | Paste |
| `d` | Trash |
| `a` | Create file (append `/` for directory) |
| `r` | Rename |
| `/` | Search |
| `.` | Toggle hidden files |
| `Esc` | Cancel / clear pending keys |
| `q` | Quit |

## 6. Shell Utilities Cheatsheet

```
zip myfolder        → myfolder.zip
unzip myfolder.zip  → myfolder/
```
