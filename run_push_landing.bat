@echo off
cd /d "%~dp0"
echo === PneuControl Landing - Push para GitHub ===
echo.

set /p MSG="Mensagem do commit (Enter para usar 'chore: update landing page'): "
if "%MSG%"=="" set MSG=chore: update landing page

git add .
git commit -m "%MSG%"
git push origin main

echo.
echo === Push concluido! ===
pause
