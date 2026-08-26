@echo off
set /a contador=0
:loop
if %contador% geq 10 goto fim
start cmd
set /a contador+=1
timeout /t 1 /nobreak >nul
goto loop
:fim
exit
