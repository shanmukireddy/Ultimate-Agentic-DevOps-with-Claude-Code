#!/bin/bash
# PostToolUse hook — logs Terraform validation and formatting commands

INPUT=$(cat)
CMD=$(echo "$INPUT" | jq -r '.tool_input.command // empty')

LOG_FILE="/c/devops-micro-internship-pravinmishra/Ultimate-Agentic-DevOps-with-Claude-Code/.claude/deploy.log"

if echo "$CMD" | grep -qE "terraform fmt|terraform validate"; then
  echo "[$(date -u +%Y-%m-%dT%H:%M:%SZ)] Terraform command executed: $CMD" >> "$LOG_FILE"
fi