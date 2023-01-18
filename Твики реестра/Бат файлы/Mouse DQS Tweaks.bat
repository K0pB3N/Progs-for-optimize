@echo off       
:SexCleaner
echo off
shift /0
mode 128,33
title Venix Mouse DQS Tweaks
cd %systemroot%\system32
call :IsAdmin
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
goto :ABC
)

:ABC       
cls    
setlocal enabledelayedexpansion
chcp 65001 >nul 2>&1
cd /d "%~dp0"
goto :menu


:menu
cls
color d   
mode 78, 23
echo.
echo.
echo      [90m██[33m╗   [90m██[33m╗[90m████████[33m╗[90m██[33m╗    [90m██[33m╗[90m███████[33m╗ [90m█████[33m╗ [90m██[33m╗  [90m██[33m╗[90m███████[33m╗
echo      [90m██[33m║   [90m██[33m║[33m╚══[90m██[33m╔══╝[90m██[33m║    [90m██[33m║[90m██[33m╔════╝[90m██[33m╔══[90m██[33m╗[90m██[33m║ [90m██[33m╔╝[90m██[33m╔════╝
echo      [90m██[33m║   [90m██[33m║   [90m██[33m║   [90m██[33m║ [90m█[33m╗[90m ██[33m║[90m█████[33m╗  [90m███████[33m║[90m█████[33m╔╝ [90m███████[33m╗
echo      [33m╚[90m██[33m╗[90m ██[33m╔[33m╝   [90m██[33m║   [90m██[33m║[90m███[33m╗[90m██[33m║[90m██[33m╔══╝  [90m██[33m╔══[90m██[33m║[90m██[33m╔═[90m██[33m╗ ╚════[90m██[33m║
echo       [33m╚[90m████[33m╔[33m╝    [90m██[33m║   ╚[90m███[33m╔[90m███[33m╔╝[90m███████[33m╗[90m██[33m║  [90m██[33m║[90m██[33m║  [90m██[33m╗[90m███████[33m║
echo        [33m╚═══[33m╝     ╚═╝    ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝  
echo.   
call :ColorText 5 "  B"    
call :ColorText 5 "y"    
call :ColorText 5 " T"       
call :ColorText 5 "h"    
call :ColorText 5 "e"    
call :ColorText 6 " V"    
call :ColorText 6 "e" 
call :ColorText 6 "n"       
call :ColorText 6 "i"    
call :ColorText 6 "x"    
call :ColorText 5 " T" 
call :ColorText 5 "e" 
call :ColorText 5 "a" 
call :ColorText 5 "m"  
echo.                          
call :ColorText 88 "=============================================================================="  
echo.    
call :ColorText 0 "                    ["    
call :ColorText 4 " 1"    
call :ColorText 0 " ]"    
call :ColorText 5 " M"    
call :ColorText 5 "O"    
call :ColorText 5 "U"       
call :ColorText 5 "S"    
call :ColorText 5 "E"    
call :ColorText 5 " D"    
call :ColorText 5 "Q" 
call :ColorText 5 "S"       
call :ColorText 5 " T"  
call :ColorText 5 "W"       
call :ColorText 5 "E" 
call :ColorText 5 "A"       
call :ColorText 5 "K" 
call :ColorText 5 "S"                    
echo.
echo.
call :ColorText 88 "=============================================================================="                        
echo.
set choice=
set /p "choice=[92m 
if "!choice!"=="1" goto :mousetweaksdqs                                           "

:mousetweaksdqs
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "20" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "SmoothMouseXCurve" /t REG_BINARY /d "0000000000000000156e000000000000004001000000000029dc0300000000000000280000000000" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "SmoothMouseXCurve" /t REG_BINARY /d "0000000000000000156e000000000000004001000000000029dc0300000000000000280000000000" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "SmoothMouseYCurve" /t REG_BINARY /d "0000000000000000fd11010000000000002404000000000000fc12000000000000c0bb0100000000" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "SmoothMouseYCurve" /t REG_BINARY /d "0000000000000000000038000000000000007000000000000000A800000000000000E00000000000" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "SmoothMouseXCurve" /t REG_BINARY /d "0000000000000000C0CC0C0000000000809919000000000040662600000000000033330000000000" /f
cls
goto menu

:ColorText    
echo off    
<nul set /p ".=%DEL%" > "%~2"    
findstr /v /a:%1 /R "^$" "%~2" nul    
del "%~2" > nul 2>&1    
goto :eof 
