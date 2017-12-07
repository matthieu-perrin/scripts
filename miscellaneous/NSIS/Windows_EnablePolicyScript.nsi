# patch_win_login_off
# this will be the created executable archive
OutFile "patch_win_login_off.exe"
# define the directory to install to, the installer's directory in this case 
#InstallDir $PROGRAMFILES
InstallDir C:\

# don't create a window for the unarchiver
# You could get fancy and do all kinds of configuration 
#   in the non-silent install; this example is the simplest it can be.
SilentInstall silent

# the executable part
Section

WriteRegDWORD HKEY_LOCAL_MACHINE "SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" "DisableBkGndGroupPolicy" 0x0
WriteRegDWORD HKEY_LOCAL_MACHINE "SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" "DelayedDesktopSwitchTimeout" 0xf
WriteRegDWORD HKEY_LOCAL_MACHINE "SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" "RunLogonScriptSync" 0x1
WriteRegDWORD HKEY_LOCAL_MACHINE "SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" "GpNetworkStartTimeoutPolicyValue" 0x5
WriteRegDWORD HKEY_LOCAL_MACHINE "SOFTWARE\Policies\Microsoft\Windows\System" "WaitForNetwork" 0x1
WriteRegDWORD HKEY_LOCAL_MACHINE "SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Winlogon" "SyncForegroundPolicy" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\Microsoft\Windows\CurrentVersion\Policies\System" "EnableProfileQuota" 0x1

# done
SectionEnd