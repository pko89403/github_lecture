#!/bin/bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <markdown-snippet-file>"
  exit 1
fi

TARGET="slides/github_copilot_training.md"
SNIPPET="$1"

if [[ ! -f "$SNIPPET" ]]; then
  echo "Snippet file not found: $SNIPPET"
  exit 2
fi

TIMESTAMP=$(date -u +"%Y-%m-%d %H:%M UTC")

cat >> "$TARGET" <<EOF

## Hook 자동 추가 ($TIMESTAMP)
$(cat "$SNIPPET")
EOF

echo "추가 완료: $TARGET"
