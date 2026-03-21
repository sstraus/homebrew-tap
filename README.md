# Homebrew Tap

Homebrew formulae and casks for [sstraus](https://github.com/sstraus) projects.

## Installation

```bash
brew tap sstraus/tap
```

## Available Packages

### Formulae (CLI tools)

| Formula | Description | Install |
|---------|-------------|---------|
| [mdkb](https://github.com/sstraus/mdkb) | Local knowledge base with hybrid search for AI coding assistants | `brew install sstraus/tap/mdkb` |
| [mdkb-extractor](https://github.com/sstraus/mdkb-extractor) | Extract text/metadata from PDFs, images, Office docs via macOS APIs | `brew install sstraus/tap/mdkb-extractor` |

### Casks (macOS apps)

| Cask | Description | Install |
|------|-------------|---------|
| [TUICommander](https://github.com/sstraus/tuicommander) | Desktop terminal orchestrator for AI coding agents | `brew install --cask sstraus/tap/tuicommander` |
| [MCPMacControl](https://github.com/sstraus/McpMacControl) | MCP server for AI-driven macOS control | `brew install --cask sstraus/tap/mcp-mac-control` |
| [SettingsSentry](https://github.com/sstraus/SettingsSentry) | Archive and reinstate macOS application configurations | `brew install --cask sstraus/tap/settings-sentry` |

## Updating

```bash
brew update
brew upgrade sstraus/tap/mdkb
brew upgrade sstraus/tap/mdkb-extractor
brew upgrade --cask sstraus/tap/tuicommander
brew upgrade --cask sstraus/tap/mcp-mac-control
brew upgrade --cask sstraus/tap/settings-sentry
```
