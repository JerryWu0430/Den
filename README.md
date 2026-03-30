# Den

Claude Code config backup for machine transfer.

## Install on new laptop

```bash
git clone git@github.com:jerrywu/Den.git
cd Den/claude-config
./restore.sh
```

Then:
1. Edit `~/.claude/settings.json` - add your `ANTHROPIC_AUTH_TOKEN`
2. Reinstall plugins: `claude /install-plugin code-simplifier feature-dev typescript-lsp ralph-loop swift-lsp slack`
3. Re-auth MCP servers (Notion, Jira, Figma)

## What's included

| Item | Description |
|------|-------------|
| `CLAUDE.md` | Global instructions (concise commits, git conventions, dev philosophy) |
| `settings.json` | Env vars, permissions, hooks, MCP servers, enabled plugins |
| `commands/` | `/complete-jira`, `/history`, `/pr-description`, `/prd-tasks` |
| `agents/` | `frontend-code-reviewer` |
| `.agents/skills/` | frontend-design, skill-creator, vercel-react-best-practices, web-design-guidelines, readme-blueprint-generator |
| `cc-statusline-rs` | Custom statusline binary |
| `green-giant.mp3` | Notification sound for Stop hook |

## Not included

- `~/.claude/projects/` - session history (machine-specific)
- `~/.claude/plugins/cache/` - reinstallable from marketplace
- Skills from other repos (academic-deep-research, research-agent, etc)
