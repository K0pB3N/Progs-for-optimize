@echo off       
:SexCleaner
echo off
shift /0
mode 128,33
title Venix Improve Keyboard Delay Time
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
echo      [90m██[96m╗   [90m██[96m╗[90m████████[96m╗[90m██[96m╗    [90m██[96m╗[90m███████[96m╗ [90m█████[96m╗ [90m██[96m╗  [90m██[96m╗[90m███████[96m╗
echo      [90m██[96m║   [90m██[96m║[96m╚══[90m██[96m╔══╝[90m██[96m║    [90m██[96m║[90m██[96m╔════╝[90m██[96m╔══[90m██[96m╗[90m██[96m║ [90m██[96m╔╝[90m██[96m╔════╝
echo      [90m██[96m║   [90m██[96m║   [90m██[96m║   [90m██[96m║ [90m█[96m╗[90m ██[96m║[90m█████[96m╗  [90m███████[96m║[90m█████[96m╔╝ [90m███████[96m╗
echo      [96m╚[90m██[96m╗[90m ██[96m╔[96m╝   [90m██[96m║   [90m██[96m║[90m███[96m╗[90m██[96m║[90m██[96m╔══╝  [90m██[96m╔══[90m██[96m║[90m██[96m╔═[90m██[96m╗ ╚════[90m██[96m║
echo       [96m╚[90m████[96m╔[96m╝    [90m██[96m║   ╚[90m███[96m╔[90m███[96m╔╝[90m███████[96m╗[90m██[96m║  [90m██[96m║[90m██[96m║  [90m██[96m╗[90m███████[96m║
echo        [96m╚═══[96m╝     ╚═╝    ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝  
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
call :ColorText 0 "                      ["    
call :ColorText 4 " 1"    
call :ColorText 0 " ]"    
call :ColorText f " I"    
call :ColorText f "M"    
call :ColorText f "P"       
call :ColorText f "R"    
call :ColorText f "O"    
call :ColorText f "V"    
call :ColorText f "E" 
call :ColorText f " K"       
call :ColorText f "E"    
call :ColorText f "Y"    
call :ColorText f "B" 
call :ColorText f "O"    
call :ColorText f "A" 
call :ColorText f "R"    
call :ColorText f "D"    
call :ColorText f " D" 
call :ColorText f "E"    
call :ColorText f "L"
call :ColorText f "A"    
call :ColorText f "Y"            
echo.
echo.
call :ColorText 88 "=============================================================================="                        
echo.
set choice=
set /p "choice=[92m 
if "!choice!"=="1" goto improvekeydelay                                                   "

:improvekeydelay  
Reg.exe add "HKCU\Control Panel\Keyboard" /v "KeyboardDelay" /t REG_DWORD /d "0" /f
cls
goto menu

:ColorText    
echo off    
<nul set /p ".=%DEL%" > "%~2"    
findstr /v /a:%1 /R "^$" "%~2" nul    
del "%~2" > nul 2>&1    
goto :eof 
