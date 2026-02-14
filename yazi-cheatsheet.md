# Yazi Cheatsheet

## Navigation

| Key | Action |
|---|---|
| `h` / `Left` | Parent directory |
| `l` / `Right` / `Enter` | Open / enter directory |
| `j` / `Down` | Move down |
| `k` / `Up` | Move up |
| `g g` | Jump to top |
| `G` | Jump to bottom |
| `~` | Home directory |
| `Ctrl+u` | Half page up |
| `Ctrl+d` | Half page down |

## File Operations

| Key | Action |
|---|---|
| `y` | Yank (copy) |
| `x` | Cut |
| `p` | Paste |
| `P` | Paste (overwrite) |
| `d` | Trash |
| `D` | Permanently delete |
| `a` | Create file (end with `/` for directory) |
| `r` | Rename |
| `c` | Copy path to clipboard |

## Selection

| Key | Action |
|---|---|
| `Space` | Toggle select |
| `V` | Visual mode |
| `Ctrl+a` | Select all |
| `Ctrl+r` | Inverse selection |
| `Escape` | Cancel selection |

## Search & Filter

| Key | Action |
|---|---|
| `/` | Search |
| `f` | Filter |
| `z` | Jump via zoxide |
| `Z` | Jump via fzf |
| `n` | Next search result |
| `N` | Previous search result |

## Sorting

| Key | Action |
|---|---|
| `, m` | Sort by modified time |
| `, M` | Sort by modified time (reverse) |
| `, c` | Sort by created time |
| `, C` | Sort by created time (reverse) |
| `, s` | Sort by size |
| `, S` | Sort by size (reverse) |
| `, a` | Sort alphabetically |
| `, A` | Sort alphabetically (reverse) |
| `, n` | Sort naturally |
| `, N` | Sort naturally (reverse) |

## Tabs

| Key | Action |
|---|---|
| `t` | New tab |
| `1` - `9` | Switch to tab N |
| `[` | Previous tab |
| `]` | Next tab |
| `Ctrl+c` | Close tab |

## View & Display

| Key | Action |
|---|---|
| `.` | Toggle hidden files |
| `w` | Toggle task manager |
| `?` | Help |
| `Ctrl+z` | Suspend yazi |

## Command Mode

| Key | Action |
|---|---|
| `:` | Open command line |
| `:q` | Quit |
| `:quit --no-cwd-file` | Quit without changing directory |

## Shell

| Key | Action |
|---|---|
| `s` | Open shell |
| `S` | Open shell (block until exit) |

## Quit

| Key | Action |
|---|---|
| `q` | Quit |
| `Q` | Quit without writing cwd-file |

## Shell Wrapper (cd on exit)

Add to `~/.bashrc` or `~/.zshrc`:

```bash
function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        builtin cd -- "$cwd"
    fi
    rm -f -- "$tmp"
}
```

## Configuration Files

| File | Location | Purpose |
|---|---|---|
| `yazi.toml` | `~/.config/yazi/` | General settings |
| `keymap.toml` | `~/.config/yazi/` | Custom keybindings |
| `theme.toml` | `~/.config/yazi/` | Colors and styling |
