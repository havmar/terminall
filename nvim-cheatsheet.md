# Neovim Essential Commands Cheatsheet

## Modes

| Key | Action |
|-----|--------|
| `i` | Insert mode (before cursor) |
| `a` | Insert mode (after cursor) |
| `v` | Visual mode |
| `V` | Visual line mode |
| `Ctrl+v` | Visual block mode |
| `Esc` / `Ctrl+[` | Normal mode |
| `:` | Command mode |

## Movement

| Key | Action |
|-----|--------|
| `h j k l` | Left, Down, Up, Right |
| `w` / `b` | Next / previous word |
| `e` | End of word |
| `0` / `$` | Start / end of line |
| `^` | First non-blank char |
| `gg` / `G` | Top / bottom of file |
| `{` / `}` | Previous / next paragraph |
| `Ctrl+d` / `Ctrl+u` | Half-page down / up |
| `%` | Matching bracket |
| `f{c}` / `F{c}` | Jump to char forward / backward |
| `t{c}` / `T{c}` | Jump to before char forward / backward |
| `;` / `,` | Repeat / reverse `f`/`t` jump |

## Editing

| Key | Action |
|-----|--------|
| `x` | Delete char |
| `dd` | Delete line |
| `dw` | Delete word |
| `D` | Delete to end of line |
| `cc` | Change line |
| `cw` | Change word |
| `C` | Change to end of line |
| `yy` | Yank (copy) line |
| `yw` | Yank word |
| `p` / `P` | Paste after / before |
| `o` / `O` | New line below / above |
| `r{c}` | Replace char with `{c}` |
| `u` / `Ctrl+r` | Undo / redo |
| `.` | Repeat last change |
| `>>` / `<<` | Indent / dedent line |
| `J` | Join line below |

## Text Objects (use with `d`, `c`, `y`, `v`)

| Key | Action |
|-----|--------|
| `iw` / `aw` | Inner / around word |
| `i"` / `a"` | Inner / around double quotes |
| `i'` / `a'` | Inner / around single quotes |
| `i)` / `a)` | Inner / around parentheses |
| `i]` / `a]` | Inner / around brackets |
| `i}` / `a}` | Inner / around braces |
| `it` / `at` | Inner / around HTML tag |
| `ip` / `ap` | Inner / around paragraph |

## Search & Replace

| Key | Action |
|-----|--------|
| `/{pattern}` | Search forward |
| `?{pattern}` | Search backward |
| `n` / `N` | Next / previous match |
| `*` / `#` | Search word under cursor fwd / bwd |
| `:%s/old/new/g` | Replace all in file |
| `:%s/old/new/gc` | Replace all with confirm |

## Files & Buffers

| Key | Action |
|-----|--------|
| `:w` | Save |
| `:q` | Quit |
| `:wq` / `ZZ` | Save & quit |
| `:q!` / `ZQ` | Quit without saving |
| `:e {file}` | Open file |
| `:bn` / `:bp` | Next / previous buffer |
| `:bd` | Close buffer |
| `:ls` | List buffers |

## Windows & Tabs

| Key | Action |
|-----|--------|
| `:sp` / `:vs` | Horizontal / vertical split |
| `Ctrl+w h/j/k/l` | Navigate splits |
| `Ctrl+w =` | Equalize split sizes |
| `Ctrl+w q` | Close split |
| `:tabnew` | New tab |
| `gt` / `gT` | Next / previous tab |

## Marks & Jumps

| Key | Action |
|-----|--------|
| `m{a-z}` | Set local mark |
| `'{a-z}` | Jump to mark |
| `Ctrl+o` / `Ctrl+i` | Jump back / forward |
| `:marks` | List marks |

## Macros

| Key | Action |
|-----|--------|
| `q{a-z}` | Start recording macro |
| `q` | Stop recording |
| `@{a-z}` | Play macro |
| `@@` | Replay last macro |

## Misc

| Key | Action |
|-----|--------|
| `~` | Toggle case |
| `Ctrl+a` / `Ctrl+x` | Increment / decrement number |
| `ga` | Show char info |
| `:!{cmd}` | Run shell command |
| `:{range}!{cmd}` | Filter through shell command |
