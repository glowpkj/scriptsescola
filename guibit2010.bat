@echo off
setlocal EnableDelayedExpansion
set /a TOTAL=0
set /a MAX=50
set "CHARS=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_@#$-."
title GUIBIT2010
:loop
set /a TOTAL+=1
if !TOTAL! GTR !MAX! goto end
set "RANDOMTITLE="
for /L %%A in (1,1,14) do (
    set /a IDX=!RANDOM! %% 69
    for %%B in (!IDX!) do set "RANDOMTITLE=!RANDOMTITLE!!CHARS:~%%B,1!"
)
start "!RANDOMTITLE!" cmd /k "echo [ERROR] UNKNOWN PROCESS DETECTED & echo. & echo NULL & echo I CAN SEE YOU & echo. & echo WHY ARE YOU HERE?"
goto loop
:end
endlocal
