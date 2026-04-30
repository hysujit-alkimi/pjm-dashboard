@echo off
REM Push latest dashboard to GitHub Pages
REM Run this anytime to update the live site.
REM Live URL: https://hysujit-alkimi.github.io/pjm-dashboard/

cd /d "%~dp0"

git add Alkimi_PJM_Dashboard.html index.html

git diff --cached --quiet
if %errorlevel%==0 (
  echo Nothing new to push -- dashboard is already up to date on GitHub.
) else (
  git commit -m "Dashboard refresh %date% %time%"
  echo Pushing to GitHub Pages...
  git push origin main
  echo.
  echo Live at: https://hysujit-alkimi.github.io/pjm-dashboard/
)

pause
