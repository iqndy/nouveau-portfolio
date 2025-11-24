#!/usr/bin/env bash
set -euo pipefail

# Usage:
#   API_KEY="your_key_here" ./scripts/inject-key.sh
# or
#   export API_KEY="your_key_here" && ./scripts/inject-key.sh

if [ -z "${API_KEY:-}" ]; then
  echo "Error: API_KEY environment variable is not set."
  echo "Set it with: export API_KEY=your_key_here"
  exit 1
fi

if [ ! -f index.html.template ]; then
  echo "Error: index.html.template not found in the current directory."
  exit 1
fi

# Replace the placeholder with the provided API key and write index.html
sed "s|__API_KEY__|${API_KEY}|g" index.html.template > index.html

echo "Generated index.html from index.html.template (API key injected)."
