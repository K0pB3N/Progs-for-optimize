@echo off
echo WINDOWS UPDATES OFF
taskkill /F /FI "IMAGENAME eq SystemSettings.exe"
@echo
echo Sevice stop 
net stop wuauserv
net stop UsoSvc
@echo
echo Do Not Connect To Any Windows Update Locations
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DoNotConnectToWindowsUpdateInternetLocations" /t REG_DWORD /d "1" /f
@echo
echo Remove Access To Use All Windows Update Features
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "SetDisableUXWUAccess" /t REG_DWORD /d "1" /f
@echo
echo Disable Automatic Updates
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "1" /f
@echo
echo Do Not Include Drivers With Windows Update
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d "1" /f
@echo
gpupdate /force
@echo
echo Deleting Windows Update Files
rd /s /q C:\Windows\SoftwareDistribution
md C:\Windows\SoftwareDistribution
@echo
net start wuauserv
net start UsoSvc
echo Windows Updates Disabled Succesfully!
pause