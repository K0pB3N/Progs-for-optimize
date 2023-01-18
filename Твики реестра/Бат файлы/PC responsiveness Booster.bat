@echo off       
:SexCleaner
echo off
shift /0
mode 128,33
title Venix FREE PC Responsiveness Booster
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
echo      [35m██[90m╗   [35m██[90m╗[35m████████[90m╗[35m██[90m╗    [35m██[90m╗[35m███████[90m╗ [35m█████[90m╗ [35m██[90m╗  [35m██[90m╗[35m███████[90m╗
echo      [35m██[90m║   [35m██[90m║[90m╚══[35m██[90m╔══╝[35m██[90m║    [35m██[90m║[35m██[90m╔════╝[35m██[90m╔══[35m██[90m╗[35m██[90m║ [35m██[90m╔╝[35m██[90m╔════╝
echo      [35m██[90m║   [35m██[90m║   [35m██[90m║   [35m██[90m║ [35m█[90m╗[35m ██[90m║[35m█████[90m╗  [35m███████[90m║[35m█████[90m╔╝ [35m███████[90m╗
echo      [90m╚[35m██[90m╗[35m ██[90m╔[90m╝   [35m██[90m║   [35m██[90m║[35m███[90m╗[35m██[90m║[35m██[90m╔══╝  [35m██[90m╔══[35m██[90m║[35m██[90m╔═[35m██[90m╗ ╚════[35m██[90m║
echo       [90m╚[35m████[90m╔[90m╝    [35m██[90m║   ╚[35m███[90m╔[35m███[90m╔╝[35m███████[90m╗[35m██[90m║  [35m██[90m║[35m██[90m║  [35m██[90m╗[35m███████[90m║
echo        [90m╚═══[90m╝     ╚═╝    ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝  
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
call :ColorText 55 "=============================================================================="  
echo.    
call :ColorText 0 "                     ["    
call :ColorText 4 " 1"    
call :ColorText 0 " ]"    
call :ColorText f " P"    
call :ColorText f "C"    
call :ColorText f " R"       
call :ColorText f "E"    
call :ColorText f "S"    
call :ColorText f "P"    
call :ColorText f "O" 
call :ColorText f "N"       
call :ColorText f "S" 
call :ColorText f "I"
call :ColorText f "V"
call :ColorText f "E"
call :ColorText f "N"
call :ColorText f "E"
call :ColorText f "S"
call :ColorText f "S"  
call :ColorText f " B"
call :ColorText f "O"
call :ColorText f "O"
call :ColorText f "S"
call :ColorText f "T"
call :ColorText f "E"
call :ColorText f "R"     
echo.
echo.
call :ColorText 55 "=============================================================================="                        
echo.
set choice=
set /p "choice=[92m 
if "!choice!"=="1" goto :fixpcslowness                                                   "

:fixpcslowness 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ClearPageFileAtShutdown" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableBoottrace" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePageCombining" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Session Manager" /v "HeapDeCommitFreeBlockThreshold" /t REG_DWORD /d "262144" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoLowDiskSpaceChecks" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d %mem% /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "26" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v FeatureSettingsOverride /t REG_DWORD /d 3 /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v FeatureSettingsOverrideMask /t REG_DWORD /d 3 /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "LinkResolveIgnoreLinkInfo" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveSearch" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveTrack" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetOpenWith" /t REG_DWORD /d "1" /f
Reg.exe add "HkLM\Software\WOW6432Node\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "AUOptions" /t REG_DWORD /d "1" /f
Reg.exe add "HkLM\Software\WOW6432Node\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoRebootWithLoggedOnUsers" /t REG_DWORD /d "1" /f
Reg.exe add "HkLM\Software\WOW6432Node\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "1" /f
Reg.exe add "HkLM\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "AlwaysUnloadDll" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d "2000" /f
Reg.exe add "HKLM\SYSTEM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsDisableLastAccessUpdate" /t REG_DWORD /d "1" /f
Reg.exe add "HKCR\AllFilesystemObjects\shellex\ContextMenuHandlers\Copy To" /ve /t REG_SZ /d "{C2FBB630-2971-11D1-A18C-00C04FD75D13}" /f
Reg.exe add "HKCR\AllFilesystemObjects\shellex\ContextMenuHandlers\Move To" /ve /t REG_SZ /d "{C2FBB631-2971-11D1-A18C-00C04FD75D13}" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "8" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "2000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseHoverTime" /t REG_SZ /d "8" /f
Reg.exe add "HKCU\Software\Hone" /v InternetTweaks /f
    netsh int tcp set global dca=enabled
    netsh int tcp set global chimney=enabled
    netsh int tcp set global netdma=enabled
    netsh interface isatap set state disabled
    netsh int tcp set global dca=enabled
    netsh int tcp set global timestamps=disabled
    netsh int tcp set global netdma=enabled
    netsh int tcp set global congestionprovider=ctcp
    netsh int tcp set global ecncapability=enabled
    netsh int tcp set global rss=enabled
    netsh int tcp set global nonsackrttresiliency=disabled
    netsh int tcp set global initialRto=2000
    netsh int tcp set supplemental template=custom icw=10
    netsh interface tcp set heuristics disabled
    netsh interface tcp set heuristics wsh=enabled
    netsh interface tcp set heuristics forcews=disabled
    netsh interface tcp set global rss=enabled
    netsh interface tcp set global autotuninglevel=normal   
    netsh interface tcp set global ecncapability=disabled
    netsh interface tcp set global timestamps=disabled
    netsh interface tcp set global initialrto=3000
    netsh interface tcp set global chimney=disabled 
    netsh interface tcp set global netdma=disabled 
    netsh interface tcp set global dca=disabled 
    netsh interface tcp set global rsc=disabled
    netsh interface tcp set global nonsackrttresiliency=disabled
    netsh interface tcp set global maxsynretransmissions=2
    netsh interface ip set global neighborcachelimit=4096 
    netsh interface ip set global defaultcurhoplimit=64 
    netsh interface ip set global taskoffload=enabled 
    netsh interface ip set global mediasenseeventlog=disabled
    netsh interface tcp set global prr=disabled
    netsh interface tcp set supplemental internet congestionprovider=dctcpnetsh 
    netsh interface tcp set supplemental datacenter congestionprovider=dctcp
    netsh interface tcp set global pacingprofile=slowstart
    netsh interface tcp set global hystart=disabled
    netsh interface tcp set global fastopen=enabled
    netsh int tcp set global rsc=disabled
    netsh int tcp set heuristics forcews=disabled
    netsh int tcp set global maxsynretransmissions=2
    netsh int tcp set global nonsackrttresiliency=disable
    netsh int tcp set supplemental template=Internet icw=10
cls
goto menu

:ColorText    
echo off    
<nul set /p ".=%DEL%" > "%~2"    
findstr /v /a:%1 /R "^$" "%~2" nul    
del "%~2" > nul 2>&1    
goto :eof 
