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
set /a MSGIDX=!RANDOM! %% 8
if !MSGIDX! EQU 0 set "MESSAGE=hello"
if !MSGIDX! EQU 1 set "MESSAGE=why are you here"
if !MSGIDX! EQU 2 set "MESSAGE=..."
if !MSGIDX! EQU 3 set "MESSAGE=unknown process detected"
if !MSGIDX! EQU 4 set "MESSAGE=stop watching"
if !MSGIDX! EQU 5 set "MESSAGE=NULL"
if !MSGIDX! EQU 6 set "MESSAGE=I can see you"
if !MSGIDX! EQU 7 set "MESSAGE=connection lost"
if !TOTAL! EQU 37 set "MESSAGE=I KNOW YOU ARE THERE"
if !TOTAL! EQU 101 set "MESSAGE=CRITICAL ERROR: GUIBIT2010"
if !TOTAL! EQU 250 set "MESSAGE=DO NOT CLOSE THIS WINDOW"
if !TOTAL! EQU 500 set "MESSAGE=why did you open me"
start "!RANDOMTITLE!" cmd /c "echo !MESSAGE!"
title !RANDOMTITLE!
goto loop
