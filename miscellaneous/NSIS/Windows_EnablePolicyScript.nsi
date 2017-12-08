# THIS SCRIPT IS PROVIDED "AS IS", WITHOUT ANY WARRANTY, AND WITHOUT ANY SUPPORT. 
# Matthieu PERRIN - 2017 - CC-BY-SA
# this will be the created executable archive
OutFile "patch_win_login_off.exe"

#InstallDir $PROGRAMFILES
InstallDir C:\

SilentInstall silent

Section

WriteRegDWORD HKEY_LOCAL_MACHINE "SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" "DisableBkGndGroupPolicy" 0x0
WriteRegDWORD HKEY_LOCAL_MACHINE "SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" "DelayedDesktopSwitchTimeout" 0xf
WriteRegDWORD HKEY_LOCAL_MACHINE "SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" "RunLogonScriptSync" 0x1
WriteRegDWORD HKEY_LOCAL_MACHINE "SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" "GpNetworkStartTimeoutPolicyValue" 0x5
WriteRegDWORD HKEY_LOCAL_MACHINE "SOFTWARE\Policies\Microsoft\Windows\System" "WaitForNetwork" 0x1
WriteRegDWORD HKEY_LOCAL_MACHINE "SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Winlogon" "SyncForegroundPolicy" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\Microsoft\Windows\CurrentVersion\Policies\System" "EnableProfileQuota" 0x1

SectionEnd