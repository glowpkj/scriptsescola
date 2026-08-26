@echo off
setlocal
set /a TOTAL=0
title TESTE DE ESTRESSE - %TOTAL% CMDs
:loop
set /a TOTAL+=1
title TESTE DE ESTRESSE - %TOTAL% CMDs
start "Stress %TOTAL%" cmd /c
goto loop
