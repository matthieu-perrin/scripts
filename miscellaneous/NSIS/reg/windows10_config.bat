:: SOURCE : https://gist.github.com/Carm01/3b83d78a0d99cc78ff1d46385ba68a13

:: https://stealthpuppy.com/customize-the-windows-default-profile/#.XEfajs17mUm
:: https://helgeklein.com/blog/2011/12/customizing-the-default-profile/
:: https://www.reddit.com/r/PowerShell/comments/8rupxv/unloading_registry_hive_with_a_script/
:: https://blogs.technet.microsoft.com/deploymentguys/2009/10/29/configuring-default-user-settings-full-update-for-windows-7-and-windows-server-2008-r2/
:: remove the double colon to activate the code if it is commented out
:: disable Cortana
:: https://www.addictivetips.com/windows-tips/disable-web-search-windows-10-april-update/
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /d 0 /t REG_DWORD /f
:: 5/9/2019
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "DisableWebSearch" /d 1 /t REG_DWORD /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /d 0 /t REG_DWORD /f
:: Prevent EDGE ICON from appearing
REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer" /v DisableEdgeDesktopShortcutCreation /d 1 /t REG_DWORD /f
:: Defer updates current branch 365 days
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferFeatureUpdates" /d 1 /t REG_DWORD /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "BranchReadinessLevel" /d 32 /t REG_DWORD /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferFeatureUpdatesPeriodInDays" /d 120 /t REG_DWORD /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "PauseFeatureUpdatesStartTime" /d 0 /t REG_DWORD /f
:: Prevent IE first run Wizard
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Main" /v "DisableFirstRunCustomize" /d 1 /t REG_DWORD /f
::  set to kill background services in 4 seconds to be inline with the per users app settings
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /d 4000 /t REG_SZ /f
:: remove OneDrive icon from quick access file explorer
REG ADD "HKEY_CLASSES_ROOT\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v "System.IsPinnedToNameSpaceTree" /d 0 /t REG_DWORD /f
:: Disable update and restart
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoRebootWithLoggedOnUsers" /d 1 /t REG_DWORD /f
:: Disable Wake and install updates
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "AUPowerManagement" /d 0 /t REG_DWORD /f
:: Disable Update and Restart and Update and Shutdown option on power menu
:: https://www.kapilarya.com/how-to-disable-remove-update-and-shut-down-in-windows-10
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAUShutdownOption" /d 1 /t REG_DWORD /f
:: REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAUAsDefaultShutdownOption" /d 1 /t REG_DWORD /f
::  Remove Lock in Account Picture Menu in Windows 10 but allows WINKEY + L
:: https://www.tenforums.com/tutorials/61721-add-remove-lock-account-picture-menu-windows-10-a.html
::REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" /v "ShowLockOption"  /d 0 /t REG_DWORD /f
:: Disable Hibernation 
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernteEnabled"  /d 0 /t REG_DWORD /f
:: Remove hibernation from menu (use only if Hibernation is turned on )
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" /v "ShowHibernateOption" /d 0 /t REG_DWORD /f
:: turn off game-bar Globally(see below)
:: https://www.top-password.com/blog/disable-game-bar-and-game-dvr-in-windows-10/
::REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowgameDVR" /d 0 /t REG_DWORD /f
:: Prevent EDGE first run page
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main" /v "PreventFirstRunPage" /d 1 /t REG_DWORD /f

:: Disable first login Animations
::REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "EnableFirstLogonAnimation" /d 0 /t REG_DWORD /f
:: 4/23/2019
:: Remove SHortCut arrows from desktop icons
::REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v "29" /d "" /t REG_SZ /f
:: 5/9/2019
:: Enable F8 boot menu options
::bcdedit /set {bootmgr} displaybootmenu yes
:: Disable Windows Defender Cloud
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SpynetReporting" /d "0" /t REG_DWORD /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SubmitSamplesConsent" /d "2" /t REG_DWORD /f
:: June 8 2019 - Prevent apps from relaunching after a reboot
:: https://www.tenforums.com/tutorials/49963-use-sign-info-auto-finish-after-update-restart-windows-10-a.html
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableAutomaticRestartSignOn" /d 1 /t REG_DWORD /f
:: =====================================================================================================================


:: Per user settings - Applied to all future users the log in for the first time.
REG LOAD HKU\DefaultUser %SystemDrive%\Users\Default\NTUSER.DAT
:: Remove People icon from system tray
::REG ADD "HKU\DefaultUser\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" /v "PeopleBand" /d 0 /t REG_DWORD /f
:: Disallow WebSearch in search bar
:: https://www.addictivetips.com/windows-tips/disable-web-search-windows-10-april-update/
REG ADD "HKU\DefaultUser\Software\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /d 0 /t REG_DWORD /f
REG ADD "HKU\DefaultUser\Software\Microsoft\Windows\CurrentVersion\Search" /v "AllowSearchToUseLocation" /d 0 /t REG_DWORD /f
REG ADD "HKU\DefaultUser\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaConsent" /d 0 /t REG_DWORD /f
:: additional disable cortana
REG ADD "HKU\DefaultUser\SOFTWARE\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /d 0 /t REG_DWORD /f
REG ADD "HKU\DefaultUser\Software\Microsoft\Windows\CurrentVersion\Search" /v "RestrictImplicitTextCollection" /d 1 /t REG_DWORD /f
REG ADD "HKU\DefaultUser\Software\Microsoft\Windows\CurrentVersion\Search" /v "RestrictImplicitInkCollection" /d 1 /t REG_DWORD /f
REG ADD "HKU\DefaultUser\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /d 0 /t REG_DWORD /f
:: Show hidden files
REG ADD "HKU\DefaultUser\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Hidden" /d 1 /t REG_DWORD /f
:: Show Show File extensions
REG ADD "HKU\DefaultUser\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /d 0 /t REG_DWORD /f
:: Show Protected Operating System Files and folders
REG ADD "HKU\DefaultUser\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSuperHidden" /d 1 /t REG_DWORD /f
:: Show this PC on all users desktop
::REG ADD "HKU\DefaultUser\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /d 0 /t REG_DWORD /f
::REG ADD "HKU\DefaultUser\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /d 0 /t REG_DWORD /f
::  Set IE HomePage
::REG ADD "HKU\DefaultUser\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /d "https://eu.startpage.com/do/mypage.pl?prfe=36c84513558a2d34bf0d89ea505333ad92934a7f254bccb70c1c89932309a9bc818f1bb4bea737976c85d1fa017f7a45" /t REG_SZ /f
:: Disable Sync Provider Notifications
REG ADD "HKU\DefaultUser\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSyncProviderNotifications" /d 0 /t REG_DWORD /f
:: Turn Off App Suggestions on Start in Windows 10 aka Disable Start Menu App Suggestions
REG ADD "HKU\DefaultUser\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SystemPaneSuggestionsEnabled" /d 0 /t REG_DWORD /f
REG ADD "HKU\DefaultUser\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338388Enabled" /d 0 /t REG_DWORD /f
:: Disable Silent App Installation
REG ADD "HKU\DefaultUser\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /d 0 /t REG_DWORD /f
:: Turn off "Get tips, tricks and suggestions as you use Windows"
:: WARNING! THIS WILL BREAK WINDOWS SPOTLIGHT LEAVE SET TO 1 IF YOU WANT SPOTLIGHT TO WORK. setting Disabled by default
::REG ADD "HKU\DefaultUser\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SoftLandingEnabled" /d 0 /t REG_DWORD /f
:: Prevent “welcome to the best windows ever”
::REG ADD "HKU\DefaultUser\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-310093Enabled" /d 0 /t REG_DWORD /f
:: Disable “This App is Preventing Shutdown or Restart” Screen
REG ADD "HKU\DefaultUser\Control Panel\Desktop" /v "WaitToKillAppTimeout" /d "4000" /t REG_SZ /f
REG ADD "HKU\DefaultUser\Control Panel\Desktop" /v "HungAppTimeout" /d "5000" /t REG_SZ /f
REG ADD "HKU\DefaultUser\Control Panel\Desktop" /v "AutoEndTasks" /d "1" /t REG_SZ /f
:: Turn Off pop-up blocker IE
REG ADD "HKU\DefaultUser\Software\Microsoft\Internet Explorer\New Windows" /v "PopupMgr" /d 0 /t REG_DWORD /f
:: Turn Off check boxes to select items
::REG ADD "HKU\DefaultUser\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "AutoCheckSelect" /d "0" /t REG_SZ /f
:: Set Control Panel view to Large icons (Classic)
::REG ADD "HKU\DefaultUser\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" /v "StartupPage" /d "1" /t REG_SZ /f
::REG ADD "HKU\DefaultUser\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" /v "AllItemsIconView" /d "0" /t REG_SZ /f

:: Disable Gamebar per user basis
:: https://www.top-password.com/blog/disable-game-bar-and-game-dvr-in-windows-10/
::REG ADD "HKU\DefaultUser\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled"  /d 0 /t REG_DWORD /f
:: Gaming Disable background recording
::REG ADD "HKU\DefaultUser\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalCaptureEnabled"  /d 0 /t REG_DWORD /f
:: https://www.tenforums.com/tutorials/76094-turn-off-game-bar-tips-windows-10-a.html
::REG ADD "HKU\DefaultUser\Software\Microsoft\GameBar" /v "ShowStartupPanel"  /d 0 /t REG_SZ /f
::REG ADD "HKU\DefaultUser\Software\Microsoft\GameBar" /v "AutoGameModeEnabled"  /d 0 /t REG_SZ /f
:: https://www.windowscentral.com/how-disable-and-remove-game-bar-windows-10-creators-update
::REG ADD "HKU\DefaultUser\SYSTEM\CurrentControlSet\Services\xbgm" /v "Start" /d 4 /t REG_SZ /f
:: Show More Details in File Transfer Dialog
REG ADD "HKU\DefaultUser\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" /v "EnthusiastMode" /d 1 /t REG_DWORD /f
:: Enable/USE Dark Theme 
::REG ADD "HKU\DefaultUser\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "AppsUseLightTheme" /d 0 /t REG_DWORD /f
:: Enable Spotlight
::REG ADD "HKU\DefaultUser\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RotatingLockScreenEnabled" /d 1 /t REG_DWORD /f
:: Do not let Windows manage your Printer
::REG ADD "HKU\DefaultUser\Software\Microsoft\Windows NT\CurrentVersion\Windows" /v "LegacyDefaultPrinterMode" /d 1 /t REG_DWORD /f
:: April-30-2019

:: June 6 2019 - Disable "Restore previous folder windows at logon" 
:: NOTE THIS REGEDIT NORMALLY DOES NOT EXIST. THIS SHOULD NOT HARM ANYTHING IF IT DOES NOT.
::REG delete "HKU\DefaultUser\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "PersistBrowsers" /f

:: Turn Off Automatically Restart Apps After Sign-In
:: May 28th 2020 https://winaero.com/blog/turn-off-automatically-restart-apps-after-sign-in-windows-10/
REG ADD "HKU\DefaultUser\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "RestartApps" /d 0 /t REG_DWORD /f


REG UNLOAD HKU\DefaultUser

:: CURRENT USER
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /d 0 /t REG_DWORD /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Search" /v "AllowSearchToUseLocation" /d 0 /t REG_DWORD /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaConsent" /d 0 /t REG_DWORD /f
:: additional disable cortana
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /d 0 /t REG_DWORD /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Search" /v "RestrictImplicitTextCollection" /d 1 /t REG_DWORD /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Search" /v "RestrictImplicitInkCollection" /d 1 /t REG_DWORD /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /d 0 /t REG_DWORD /f
:: Show hidden files
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Hidden" /d 1 /t REG_DWORD /f
:: Show Show File extensions
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /d 0 /t REG_DWORD /f
:: Show Protected Operating System Files and folders
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSuperHidden" /d 1 /t REG_DWORD /f
:: Disable Sync Provider Notifications
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSyncProviderNotifications" /d 0 /t REG_DWORD /f
:: Turn Off App Suggestions on Start in Windows 10 aka Disable Start Menu App Suggestions
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SystemPaneSuggestionsEnabled" /d 0 /t REG_DWORD /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338388Enabled" /d 0 /t REG_DWORD /f
:: Disable Silent App Installation
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /d 0 /t REG_DWORD /f
:: Disable “This App is Preventing Shutdown or Restart” Screen
REG ADD "HKU\DefaultUser\Control Panel\Desktop" /v "WaitToKillAppTimeout" /d "4000" /t REG_SZ /f
REG ADD "HKU\DefaultUser\Control Panel\Desktop" /v "HungAppTimeout" /d "5000" /t REG_SZ /f
REG ADD "HKU\DefaultUser\Control Panel\Desktop" /v "AutoEndTasks" /d "1" /t REG_SZ /f
:: Turn Off pop-up blocker IE
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\New Windows" /v "PopupMgr" /d 0 /t REG_DWORD /f
:: Show More Details in File Transfer Dialog
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" /v "EnthusiastMode" /d 1 /t REG_DWORD /f
:: Turn Off Automatically Restart Apps After Sign-In
:: May 28th 2020 https://winaero.com/blog/turn-off-automatically-restart-apps-after-sign-in-windows-10/
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "RestartApps" /d 0 /t REG_DWORD /f


:: Put his at the end of your script 
:: taskkill /f /im explorer.exe
:: start explorer.exe