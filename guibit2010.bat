@echo off
setlocal EnableDelayedExpansion
set /a TOTAL=0
set "CHARS=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_@#$-."
title GUIBIT2010
:loop
set /a TOTAL+=1
set "RANDOMTITLE="
for /L %%A in (1,1,14) do (
    set /a IDX=!RANDOM! %% 69
    for %%B in (!IDX!) do set "RANDOMTITLE=!RANDOMTITLE!!CHARS:~%%B,1!"
)
start "!RANDOMTITLE!" cmd /c
goto loop
