#!/bin/bash
# One-time GitHub Pages setup script
# Run this ONCE from Terminal: cd "PJM TOOL" && bash github_setup.sh
# After this, the dashboard will be live at: https://hysujit-alkimi.github.io/pjm-dashboard/

set -e

echo "🔧 Cleaning up any broken git state..."
rm -rf .git

echo "🔧 Initialising git..."
git init -b main
git config user.name "hysujit-alkimi"
git config user.email "sujit.kumar@kensaltensi.org"

echo "🔗 Adding remote..."
git remote add origin https://github.com/hysujit-alkimi/pjm-dashboard.git

echo "📦 Staging dashboard files..."
git add Alkimi_PJM_Dashboard.html index.html .gitignore Alkimi_Q2_priorities.html

echo "💾 Creating initial commit..."
git commit -m "Initial PJM Dashboard — $(date '+%Y-%m-%d')"

echo "🚀 Pushing to GitHub..."
git push -u origin main

echo ""
echo "✅ Done! Now go to:"
echo "   https://github.com/hysujit-alkimi/pjm-dashboard/settings/pages"
echo "   → Branch: main → Folder: / (root) → Save"
echo ""
echo "Your dashboard will be live at:"
echo "   https://hysujit-alkimi.github.io/pjm-dashboard/"
