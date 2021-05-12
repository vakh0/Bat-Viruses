@echo off 
reg add HKCU\Software\Microsoft\Windows\Current Version\Policies\Explorer 
/v NoControlPanel /t REG_DWORD /d 1 /f >nul
