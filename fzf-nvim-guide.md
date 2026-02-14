# fzf x nvim — File Navigation with Tabs

## What the Tools Are

**nvim** is your text editor. It runs in the terminal, opens files, and lets you edit them.

**fzf** is a fuzzy finder. You type a few characters and it narrows down a list of files instantly. No need to remember exact paths — type fragments and fzf figures it out.

**fzf-lua** is a plugin that puts fzf inside nvim. Instead of fzf and nvim being two separate steps, fzf becomes a feature of your editor.

**bat** is what renders the file preview with syntax highlighting and line numbers.

## How They Interact

Without the plugin, the flow is sequential:

    terminal → fzf picks a file → nvim opens it → you quit nvim → repeat

With fzf-lua, the flow is continuous:

    nvim is always running → fzf opens inside it → file opens as a tab → fzf again → another tab

You stay in one nvim session. Files accumulate as tabs (buffers) along the top. You switch between them freely.

## The Mental Model Flip

You were thinking of it as **nvim within fzf** — fzf is the file explorer, nvim is the thing that happens after you pick something. fzf is in charge.

The plugin inverts this: **fzf within nvim**. nvim is your workspace. fzf is just the search bar you summon when you need to open something. nvim is in charge.

Why this matters: when fzf is in charge, each file is an isolated event. You open it, edit it, close nvim, and start over. When nvim is in charge, you build up a working set of files and move between them. This is the difference between using a screwdriver and having a workbench.

## Your Keybindings

| Key | What it does |
|---|---|
| `\f` | Open fzf file picker — search and open a file as a new tab |
| `\b` | List open buffers — switch between files you already have open |
| `Tab` | Next buffer tab |
| `Shift+Tab` | Previous buffer tab |
| `\x` | Close current buffer tab |
| `ZZ` | Save and quit nvim entirely |

(`\` is the leader key. Press `\` then the letter — not simultaneously.)

## Workflow for Editing Across Many Files

### Opening nvim

Open nvim from the root of whatever folder tree you're working in:

    cd ~/notes
    nvim

Then use `\f` to find files. fzf searches recursively, so it doesn't matter how deep the folder structure goes.

### Building up your tab set

Use `\f` repeatedly to open the files you need. They stay open as tabs. You're not committing to one file — you're gathering the files relevant to your current task.

### Moving between files

`Tab` and `Shift+Tab` cycle through tabs in order. `\b` opens a fuzzy search of your open buffers — useful when you have many tabs and want to jump to a specific one by name.

### Saving

`:w` saves the current file without closing it. Do this often. `ZZ` saves and quits nvim entirely — use this when you're done with the whole session.

### Closing files you're done with

`\x` closes the current buffer. The tab disappears, and you land on an adjacent one.

## Common Sense for Multi-File Editing

**Start from the right directory.** fzf searches from where you launched nvim. If your notes and docs are spread across `~/notes`, `~/projects`, and `~/docs`, either open nvim from `~` or open it from the most relevant subfolder.

**Save before switching.** nvim warns you about unsaved changes when switching buffers, but it's simpler to just `:w` before hitting `Tab` or `\f`. Make it a reflex.

**Don't keep too many tabs open.** If you can't remember what's open, you have too many. Close files you're done with using `\x`. Use `\b` to see what's still open.

**Use fzf's fuzzy matching.** You don't need to type exact filenames. `readme` finds `README.md`. `confnv` finds `config/nvim/init.lua`. Type fragments of the path, not just the filename.

**One nvim session per task.** If you're working on two unrelated things, use two terminal windows with two nvim sessions. Mixing unrelated files in one tab set creates clutter.
