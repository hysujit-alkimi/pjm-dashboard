#!/bin/bash
# Push latest dashboard to GitHub Pages
# Double-click this in Terminal (or run: bash push_to_github.sh) whenever you want to update the live site.
# Your live URL: https://hysujit-alkimi.github.io/pjm-dashboard/

cd "$(dirname "$0")"

echo "📦 Staging changes..."
git add Alkimi_PJM_Dashboard.html index.html

if git diff --cached --quiet; then
  echo "✅ Nothing new to push — dashboard is already up to date on GitHub."
else
  git commit -m "Dashboard refresh $(date '+%Y-%m-%d %H:%M')"
  echo "🚀 Pushing to GitHub Pages..."
  git push origin main
  echo ""
  echo "✅ Live at: https://hysujit-alkimi.github.io/pjm-dashboard/"
fi
