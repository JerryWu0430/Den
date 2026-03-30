#!/bin/bash
# Restore Claude Code config to new machine
# Usage: ./restore.sh

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
CLAUDE_DIR="$HOME/.claude"

echo "Restoring Claude Code config..."

# Create directories
mkdir -p "$CLAUDE_DIR/commands" "$CLAUDE_DIR/agents" "$CLAUDE_DIR/.agents/skills" "$CLAUDE_DIR/plugins" "$CLAUDE_DIR/skills"

# Copy files
cp "$SCRIPT_DIR/CLAUDE.md" "$CLAUDE_DIR/"
cp "$SCRIPT_DIR/settings.json" "$CLAUDE_DIR/"
cp "$SCRIPT_DIR/commands/"*.md "$CLAUDE_DIR/commands/"
cp "$SCRIPT_DIR/agents/"*.md "$CLAUDE_DIR/agents/"
cp -r "$SCRIPT_DIR/.agents/skills/"* "$CLAUDE_DIR/.agents/skills/"
cp "$SCRIPT_DIR/plugins/"*.json "$CLAUDE_DIR/plugins/"
cp "$SCRIPT_DIR/cc-statusline-rs" "$CLAUDE_DIR/"
cp "$SCRIPT_DIR/green-giant.mp3" "$CLAUDE_DIR/"

# Make statusline executable
chmod +x "$CLAUDE_DIR/cc-statusline-rs"

# Create skill symlinks
for skill in "$CLAUDE_DIR/.agents/skills/"*/; do
  name=$(basename "$skill")
  ln -sf "../.agents/skills/$name" "$CLAUDE_DIR/skills/$name" 2>/dev/null || true
done

echo ""
echo "Done! Remember to:"
echo "  1. Update ANTHROPIC_AUTH_TOKEN in ~/.claude/settings.json"
echo "  2. Reinstall plugins: claude /install-plugin code-simplifier"
echo "  3. Re-authenticate MCP servers (Notion, Jira, Figma)"
