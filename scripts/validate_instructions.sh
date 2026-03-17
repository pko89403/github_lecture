#!/bin/bash
set -euo pipefail

REQUIRED_INSTRUCTIONS=(
  ".github/instructions/octofit_tracker_setup_project.instructions.md"
  ".github/instructions/octofit_tracker_django_backend.instructions.md"
  ".github/instructions/harness_engineering.instructions.md"
)
REQUIRED_PROMPTS=(
  ".github/prompts/harness_engineering.prompt.md"
  ".github/prompts/update-octofit-tracker-app.prompt.md"
  ".github/prompts/harness_remember_hook.prompt.md"
)

for file in "${REQUIRED_INSTRUCTIONS[@]}"; do
  if [[ ! -f "$file" ]]; then
    echo "missing instruction: $file"
    exit 1
  fi
done

for file in "${REQUIRED_PROMPTS[@]}"; do
  if [[ ! -f "$file" ]]; then
    echo "missing prompt: $file"
    exit 1
  fi
done

if ! grep -q "Hook 자동 추가" slides/github_copilot_training.md; then
  echo "slides/github_copilot_training.md is missing Hook 자동 추가 section"
  exit 1
fi

echo "All instructions/prompts are present and hook section initialized."
