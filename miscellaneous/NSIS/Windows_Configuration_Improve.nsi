# eMaintenance - Matthieu PERRIN (OBS) - Juillet 2017
# this will be the created executable archive
OutFile "windows_configuration_improve.exe"
# define the directory to install to, the installer's directory in this case 
#InstallDir $PROGRAMFILES
#InstallDir $APPDATA\tmp\

# don't create a window for the unarchiver
# You could get fancy and do all kinds of configuration 
#   in the non-silent install; this example is the simplest it can be.
SilentInstall silent
Icon "settings-11-128.ico"

# the executable part
Section

#SetOutPath $INSTDIR

WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\Control\FileSystem" "NtfsDisableLastAccessUpdate" 0x1
WriteRegStr HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\Control\Power\User\PowerSchemes" "ActivePowerScheme" "381b4222-f694-41f0-9685-ff5bb260df2e"
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\ControlSet001\Control\Power\User\PowerSchemes\381b4222-f694-41f0-9685-ff5bb260df2e\238c9fa8-0aad-41ed-83f4-97be242c8f20\29f6c1db-86da-48c5-9fdb-f2b67b1f44da" "ACSettingIndex" 0x0
WriteRegStr HKEY_CURRENT_USER "Software\Microsoft\Windows\CurrentVersion\Explorer" "BrowseNewProcess" "Yes"
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\WMPNetworkSvc" "Start" 0x4
WriteRegDWORD HKEY_LOCAL_MACHINE "SOFTWARE\Microsoft\Windows\CurrentVersion\explorer" "AlwaysUnloadDll" 0x1
WriteRegStr HKEY_CURRENT_USER "Control Panel\Sound" "Beep" "no"
WriteRegStr HKEY_CURRENT_USER "Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "HideFileExt" "0"
WriteRegDWORD HKEY_LOCAL_MACHINE "SOFTWARE\Microsoft\Windows\CurrentVersion\policies\system" "NoInternetOpenWith" 0x1
WriteRegStr HKEY_CURRENT_USER "Control Panel\Desktop" "AutoEndTasks" "1"
WriteRegStr HKEY_CURRENT_USER "Control Panel\Desktop" "WaitToKillAppTimeout" "2000"
WriteRegStr HKEY_CURRENT_USER "Control Panel\Desktop" "HungAppTimeout" "2000"
WriteRegStr HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\Control" "WaitToKillServiceTimeout" "2000"
WriteRegStr HKEY_CURRENT_USER "SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" "BrowseNewProcess" "Yes"

WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Microsoft\Dfrg\BootOptimizeFunction" "OptimizeComplete" "No"
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" "IoPageLockLimit" 0xf0000
WriteRegStr HKEY_CURRENT_USER "Control Panel\Desktop" "MenuShowDelay" "8"
WriteRegStr HKEY_CURRENT_USER "Control Panel\Desktop" "LowLevelHooksTimeout" "1000"
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\Services\W32Time\TimeProviders\NtpClient" "SpecialPollInterval" 0x2a300

WriteRegDWORD HKEY_LOCAL_MACHINE "SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\explorer.exe\PerfOptions" "CpuPriorityClass" 0x3


WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\napagent" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\iphlpsvc" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\PeerDistSvc" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\SensrSvc" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\SCardSvr" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\TrkWks" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\SessionEnv" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\UI0Detect" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\IPBusEnum" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\QWAVE" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\CscService" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\WinRM" "Start" 0x4
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\hkmsvc" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\p2pimsvc" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\VaultSvc" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\p2psvc" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\fdPHost" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\WdiSystemHost" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\SNMPTRAP" "Start" 0x4
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\RpcLocator" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\Netlogon" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\WPCSvc" "Start" 0x4
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\SharedAccess" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\wercplsupport" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\CertPropSvc" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\PNRPsvc" "Start" 0x4
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\UmRdpService" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\RemoteRegistry" "Start" 0x4
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\WbioSrvc" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\BDESVC" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\Wlansvc" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\WwanSvc" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\PcaSvc" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\ALG" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\ehSched" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\PNRPAutoReg" "Start" 0x4
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\WerSvc" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\ehRecvr" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\DPS" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\FDResPub" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\WPDBusEnum" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\WdiServiceHost" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\MSiSCSI" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\TabletInputService" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\WMPNetworkSvc" "Start" 0x4
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\TBS" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\SCPolicySvc" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\WcsPlugInService" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\Fax" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\WebClient" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\idsvc" "Start" 0x4
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\wcncsvc" "Start" 0x4
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\WSearch" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\idsvc" "Start" 0x4
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\wcncsvc" "Start" 0x4
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\WMPNetworkSvc" "Start" 0x4
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\DPS" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\PNRPAutoReg" "Start" 0x4
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\PNRPsvc" "Start" 0x4
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\WPCSvc" "Start" 0x4
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\RpcLocator" "Start" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\SNMPTRAP" "Start" 0x4
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\WinRM" "Start" 0x4
WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\services\RemoteRegistry" "Start" 0x4



# done
SectionEnd