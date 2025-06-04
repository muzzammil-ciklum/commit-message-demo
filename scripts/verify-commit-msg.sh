#!/bin/sh

MSG_FILE=$1
MSG=$(cat "$MSG_FILE")

PATTERN="^(STORY|BUG|TASK)/MAC-[0-9]+: .+"

if ! echo "$MSG" | grep -Eq "$PATTERN"; then
  echo "❌ Invalid commit message."
  echo "✅ Expected format: STORY|BUG|TASK/MAC-<number>: <message>"
  echo "Example: TASK/MAC-1234: Add login feature"
  exit 1
fi
