# Neovim Commands Curriculum

Learn in order. Master each section before moving on.

---

## 1. Survival (Learn First)

| Key | Action |
|-----|--------|
| `i` | Enter insert mode |
| `Esc` | Back to normal mode |
| `:w` | Save |
| `:q` | Quit |
| `:wq` | Save & quit |
| `:q!` | Quit without saving |
| `u` | Undo |
| `Ctrl+r` | Redo |

---

## 2. Basic Movement

| Key | Action |
|-----|--------|
| `h j k l` | Left, Down, Up, Right |
| `w` / `b` | Next / previous word |
| `e` | End of word |
| `0` / `$` | Start / end of line |
| `^` | First non-blank char |
| `gg` / `G` | Top / bottom of file |
| `:{n}` | Go to line `n` |

---

## 3. Basic Editing

| Key | Action |
|-----|--------|
| `x` | Delete char |
| `dd` | Delete line |
| `yy` | Yank (copy) line |
| `p` / `P` | Paste after / before |
| `o` / `O` | New line below / above |
| `a` | Insert after cursor |
| `A` | Insert at end of line |
| `I` | Insert at start of line |
| `r{c}` | Replace single char |
| `.` | Repeat last change |

---

## 4. Operators + Motions

The grammar: `{operator}{count}{motion}`

**Operators:**

| Key | Action |
|-----|--------|
| `d` | Delete |
| `c` | Change (delete + insert) |
| `y` | Yank (copy) |

**Common combos:**

| Key | Action |
|-----|--------|
| `dw` | Delete word |
| `d$` / `D` | Delete to end of line |
| `cw` | Change word |
| `cc` | Change entire line |
| `C` | Change to end of line |
| `yw` | Yank word |
| `2dd` | Delete 2 lines |
| `3j` | Move down 3 lines |

---

## 5. Text Objects

Use with operators: `{operator}{i/a}{object}`

| Key | Action |
|-----|--------|
| `diw` | Delete inner word |
| `ciw` | Change inner word |
| `di"` | Delete inside `""` |
| `ci(` | Change inside `()` |
| `da]` | Delete around `[]` |
| `ci{` | Change inside `{}` |
| `dit` | Delete inside HTML tag |
| `yap` | Yank around paragraph |

---

## 6. Search & Navigate

| Key | Action |
|-----|--------|
| `/{pattern}` | Search forward |
| `?{pattern}` | Search backward |
| `n` / `N` | Next / previous match |
| `*` / `#` | Search word under cursor fwd / bwd |
| `f{c}` / `F{c}` | Jump to char on line |
| `t{c}` / `T{c}` | Jump before char on line |
| `;` / `,` | Repeat / reverse `f`/`t` |
| `%` | Matching bracket |

---

## 7. Visual Mode

| Key | Action |
|-----|--------|
| `v` | Character-wise visual |
| `V` | Line-wise visual |
| `Ctrl+v` | Block visual |
| `gv` | Reselect last selection |
| `o` | Jump to other end of selection |

In visual mode, apply operators: `d`, `c`, `y`, `>`, `<`, `~`

---

## 8. Scrolling & Larger Movement

| Key | Action |
|-----|--------|
| `Ctrl+d` / `Ctrl+u` | Half-page down / up |
| `Ctrl+f` / `Ctrl+b` | Full page down / up |
| `{` / `}` | Previous / next paragraph |
| `H` / `M` / `L` | Screen top / middle / bottom |
| `zz` / `zt` / `zb` | Center / top / bottom cursor line |

---

## 9. Search & Replace

| Key | Action |
|-----|--------|
| `:s/old/new/` | Replace first on current line |
| `:s/old/new/g` | Replace all on current line |
| `:%s/old/new/g` | Replace all in file |
| `:%s/old/new/gc` | Replace all with confirmation |
| `:'<,'>s/old/new/g` | Replace in visual selection |

---

## 10. Indenting & Formatting

| Key | Action |
|-----|--------|
| `>>` / `<<` | Indent / dedent line |
| `>` / `<` (visual) | Indent / dedent selection |
| `=` | Auto-indent |
| `gg=G` | Auto-indent entire file |
| `J` | Join line below |
| `gq` (visual) | Reflow/wrap text |

---

## 11. Files, Buffers & Windows

**Buffers:**

| Key | Action |
|-----|--------|
| `:e {file}` | Open file |
| `:ls` | List buffers |
| `:bn` / `:bp` | Next / prev buffer |
| `:bd` | Close buffer |
| `ZZ` | Save & quit |
| `ZQ` | Quit without saving |

**Windows:**

| Key | Action |
|-----|--------|
| `:sp` / `:vs` | Horizontal / vertical split |
| `Ctrl+w h/j/k/l` | Navigate splits |
| `Ctrl+w =` | Equalize sizes |
| `Ctrl+w q` | Close split |

**Tabs:**

| Key | Action |
|-----|--------|
| `:tabnew` | New tab |
| `gt` / `gT` | Next / prev tab |
| `:tabclose` | Close tab |

---

## 12. Marks & Jumps

| Key | Action |
|-----|--------|
| `m{a-z}` | Set local mark |
| `'{a-z}` | Jump to mark line |
| `` `{a-z} `` | Jump to mark exact position |
| `Ctrl+o` / `Ctrl+i` | Jump back / forward in jumplist |
| `'.` | Jump to last edit |
| `:marks` | List all marks |

---

## 13. Macros

| Key | Action |
|-----|--------|
| `q{a-z}` | Start recording into register |
| `q` | Stop recording |
| `@{a-z}` | Play macro |
| `@@` | Replay last macro |
| `5@a` | Play macro `a` five times |

---

## 14. Registers

| Key | Action |
|-----|--------|
| `"{reg}y` | Yank into register |
| `"{reg}p` | Paste from register |
| `"0p` | Paste last yank (not delete) |
| `"+y` / `"+p` | System clipboard yank / paste |
| `:reg` | Show registers |

---

## 15. Misc Power Tools

| Key | Action |
|-----|--------|
| `~` | Toggle case |
| `g~{motion}` | Toggle case over motion |
| `gu` / `gU` | Lowercase / uppercase over motion |
| `Ctrl+a` / `Ctrl+x` | Increment / decrement number |
| `ga` | Show char code |
| `:!{cmd}` | Run shell command |
| `:{range}!{cmd}` | Filter lines through command |
| `:earlier 5m` | Undo to 5 minutes ago |
| `:later 5m` | Redo to 5 minutes ago |

---

*Tip: The Vim "language" is `{count}{operator}{motion/text-object}`. Once you internalize this grammar, commands compose naturally.*
