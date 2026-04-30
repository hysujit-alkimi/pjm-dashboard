@echo off
REM One-time GitHub Pages setup
REM Run this ONCE from the folder: double-click or run in Command Prompt / PowerShell
REM After this, your dashboard will be live at:
REM   https://hysujit-alkimi.github.io/pjm-dashboard/

cd /d "%~dp0"

echo Cleaning up any broken git state...
if exist ".git" rmdir /s /q ".git"

echo Initialising git...
git init -b main
git config user.name "hysujit-alkimi"
git config user.email "sujit.kumar@kensaltensi.org"

echo Adding remote...
git remote add origin https://github.com/hysujit-alkimi/pjm-dashboard.git

echo Staging files...
git add Alkimi_PJM_Dashboard.html index.html .gitignore Alkimi_Q2_priorities.html

echo Creating initial commit...
git commit -m "Initial PJM Dashboard"

echo Pushing to GitHub...
echo (You may be prompted to log in to GitHub)
git push -u origin main

echo.
echo Done! Now go to:
echo   https://github.com/hysujit-alkimi/pjm-dashboard/settings/pages
echo   Set Branch: main, Folder: / (root), click Save
echo.
echo Your dashboard will be live at:
echo   https://hysujit-alkimi.github.io/pjm-dashboard/
echo.
pause
