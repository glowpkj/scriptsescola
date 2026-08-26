@echo off
setlocal EnableDelayedExpansion
set "TOTAL=100"
set "NIVEIS=3"
set "BASE=%USERPROFILE%\Desktop\Teste_Pastas_BAT"

if not exist "%BASE%" mkdir "%BASE%"
set /a CRIADAS=0
set "ALFABETO=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_-"

:loop
if !CRIADAS! geq %TOTAL% goto fim
set "NOME="
for /L %%A in (1,1,12) do (
    set /a POS=!random! %% 64
    for %%B in (!POS!) do set "NOME=!NOME!!ALFABETO:~%%B,1!"
)
set "CAMINHO=%BASE%\!NOME!"
if exist "!CAMINHO!" goto loop
mkdir "!CAMINHO!" >nul 2>&1
if errorlevel 1 goto loop
set /a CRIADAS+=1
set "ATUAL=!CAMINHO!"
for /L %%L in (2,1,%NIVEIS%) do (
    set "SUB=!ATUAL!\!NOME!_%%L"
    mkdir "!SUB!" >nul 2>&1
    if not errorlevel 1 set /a CRIADAS+=1
    set "ATUAL=!SUB!"
    if !CRIADAS! geq %TOTAL% goto fim
)
goto loop

:fim
echo.
echo Pastas criadas: !CRIADAS!
echo Local: %BASE%
pause
endlocal
