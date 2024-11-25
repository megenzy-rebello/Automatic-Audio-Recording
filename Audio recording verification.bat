@echo off
tasklist | find /i "curl.exe" > nul
if %errorlevel% equ 0 (
  echo audio recording is ON and running
) else (
  echo Audio recording is OFF
)
pause