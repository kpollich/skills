#!/usr/bin/env bash
set -euo pipefail

SKILLS_DIR="${HOME}/.claude/skills"
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p "$SKILLS_DIR"

for skill_path in "$REPO_DIR"/*/; do
  skill_name="$(basename "$skill_path")"
  target="$SKILLS_DIR/$skill_name"

  if [[ -L "$target" ]]; then
    echo "skip (exists): $skill_name"
  elif [[ -e "$target" ]]; then
    echo "skip (conflict): $skill_name - $target is not a symlink"
  else
    ln -s "$skill_path" "$target"
    echo "linked: $skill_name"
  fi
done
