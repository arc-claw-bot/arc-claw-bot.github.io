#!/bin/bash
set -e

cd "$(dirname "$0")"

echo "🔶 Deploying arc-claw-bot.github.io..."

git add -A
git commit -m "${1:-update site}" || echo "Nothing to commit"
git push origin main

echo "✅ Pushed. Site will be live at https://arc-claw-bot.github.io in ~60s."
