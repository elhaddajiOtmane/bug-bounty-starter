#!/bin/bash
# Antigravity Pack installer (Mac / Linux)
# Usage:
#   ./install-mac-linux.sh project /path/to/your-project   -> skills+rules+workflows for ONE project
#   ./install-mac-linux.sh global                          -> skills for ALL projects
set -e
cd "$(dirname "$0")"
MODE="${1:-}"
TARGET="${2:-}"

if [ "$MODE" = "project" ]; then
  if [ -z "$TARGET" ]; then echo "Give the project path: ./install-mac-linux.sh project /path/to/project"; exit 1; fi
  mkdir -p "$TARGET/.agents" "$TARGET/.agent"
  cp -r .agents/skills "$TARGET/.agents/skills"
  cp -r .agents/rules "$TARGET/.agents/rules"
  cp -r .agent/workflows "$TARGET/.agent/workflows"
  cp -n AGENTS.md "$TARGET/AGENTS.md" 2>/dev/null || true
  cp -n GEMINI.md "$TARGET/GEMINI.md" 2>/dev/null || true
  echo "Installed into $TARGET — open the project in Antigravity and start a new conversation."
elif [ "$MODE" = "global" ]; then
  mkdir -p ~/.gemini/config/skills
  cp -r .agents/skills/* ~/.gemini/config/skills/
  cp -n AGENTS.md ~/.gemini/GEMINI.md 2>/dev/null || true
  echo "Skills installed globally in ~/.gemini/config/skills — start a new conversation in Antigravity."
else
  echo "Usage: ./install-mac-linux.sh project /path/to/project   OR   ./install-mac-linux.sh global"
fi
