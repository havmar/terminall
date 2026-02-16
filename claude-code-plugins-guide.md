# Claude Code Plugins Guide

## Quick Install (TL;DR)

```
/plugin marketplace add anthropics/claude-plugins-official
/plugin install claude-md-management@claude-plugins-official
```

## The Problem

The official docs say the `claude-plugins-official` marketplace is "automatically available" — but it's not. You have to add it manually first, or `/plugin install` will fail with:

```
Plugin "plugin-name" not found in any marketplace
```

## Step-by-Step

### 1. Add the official marketplace

```
/plugin marketplace add anthropics/claude-plugins-official
```

Expected output: `Successfully added marketplace: claude-plugins-official`

### 2. Install a plugin

```
/plugin install <plugin-name>@claude-plugins-official
```

Replace `<plugin-name>` with the actual plugin name, e.g.:

```
/plugin install claude-md-management@claude-plugins-official
```

### 3. Verify installation

- Run `/plugin` and press `Tab` to switch to the **Installed** tab
- The **Discover** tab only shows plugins you *haven't* installed yet

## Useful Commands

| Command | What it does |
|---|---|
| `/plugin` | Open interactive plugin manager (Tab to switch tabs) |
| `/plugin marketplace add <source>` | Add a marketplace |
| `/plugin marketplace list` | List configured marketplaces |
| `/plugin marketplace update <name>` | Refresh marketplace listings |
| `/plugin install <plugin>@<marketplace>` | Install a plugin |
| `/plugin uninstall <plugin>@<marketplace>` | Remove a plugin |
| `/plugin disable <plugin>@<marketplace>` | Disable without removing |
| `/plugin enable <plugin>@<marketplace>` | Re-enable a disabled plugin |

## Good to Know

- Only **installed** plugins consume context — the marketplace catalog does not
- Plugin commands are namespaced: `/claude-md-management:revise-claude-md`
- Requires Claude Code **v1.0.33+** (`claude --version` to check)
- Marketplace sources: GitHub repos (`owner/repo`), git URLs, local paths, or remote URLs

## Popular Official Plugins

| Plugin | Installs | Description |
|---|---|---|
| `frontend-design` | 183k | Frontend design assistance |
| `context7` | 115k | Context management |
| `code-review` | 91k | Code review workflows |
| `github` | 83k | GitHub integration (MCP) |
| `commit-commands` | 52k | Git commit/push/PR commands |
| `typescript-lsp` | 61k | TypeScript code intelligence |
| `pyright-lsp` | 32k | Python code intelligence |
| `claude-md-management` | 28k | Audit & maintain CLAUDE.md files |
