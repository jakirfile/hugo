#!/usr/bin/env bash
set -uo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BRANCH="$(git -C "$REPO_DIR" rev-parse --abbrev-ref HEAD 2>/dev/null || echo master)"
LOG_FILE="/tmp/hugo-auto-commit.log"

run_once() {
  git -C "$REPO_DIR" add -A

  if git -C "$REPO_DIR" diff --cached --quiet --exit-code; then
    return 0
  fi

  msg="Auto commit $(date -u +'%Y-%m-%d %H:%M:%S UTC')"
  git -C "$REPO_DIR" commit -m "$msg" >>"$LOG_FILE" 2>&1 || return 0

  git -C "$REPO_DIR" push origin HEAD:"$BRANCH" >>"$LOG_FILE" 2>&1 || {
    echo "Push failed: $(date -u +'%Y-%m-%d %H:%M:%S UTC')" >>"$LOG_FILE"
    return 0
  }
}

if [ "${1:-}" = "--watch" ]; then
  while true; do
    run_once
    sleep 30
  done
else
  run_once
fi
