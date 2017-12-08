# THIS SCRIPT IS PROVIDED "AS IS", WITHOUT ANY WARRANTY, AND WITHOUT ANY SUPPORT. 
# Matthieu PERRIN - 2017 - CC-BY-SA
# this will be the created executable archive
OutFile "EnableScriptHost.exe"

#InstallDir $PROGRAMFILES
InstallDir C:\


SilentInstall silent

Section

WriteRegStr HKEY_LOCAL_MACHINE "Software\Microsoft\Windows Script Host\Settings" "Enabled" "1"
WriteRegStr HKEY_LOCAL_MACHINE "Software\Microsoft\Windows Script Host\Settings" "IgnoreUserSettings" "0"
WriteRegStr HKEY_LOCAL_MACHINE "Software\Microsoft\Windows Script Host\Settings" "LogSecurityFailures" "0"
WriteRegStr HKEY_CURRENT_USER "Software\Microsoft\Windows Script Host\Settings" "Enabled" "1"

SectionEnd