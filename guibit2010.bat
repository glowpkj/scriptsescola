@echo off
setlocal
set "TOTAL=1000000000000000000"
title TESTE DE ESTRESSE - %TOTAL% CMDs
for /L %%i in (1,1,%TOTAL%) do (
    start "Stress %%i" cmd /c "ping 127.0.0.1 -n 4 >nul"
)
echo.
echo Teste concluido: %TOTAL% processos foram iniciados.
echo Use Ctrl+C para interromper o script caso necessario.
pause >nul
endlocal
