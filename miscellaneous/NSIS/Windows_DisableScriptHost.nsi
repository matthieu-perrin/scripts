# THIS SCRIPT IS PROVIDED "AS IS", WITHOUT ANY WARRANTY, AND WITHOUT ANY SUPPORT. 
# Matthieu PERRIN - 2017 - CC-BY-SA
# this will be the created executable archive
OutFile "DisableScriptHost.exe"
# define the directory to install to, the installer's directory in this case 
#InstallDir $PROGRAMFILES
InstallDir C:\

# don't create a window for the unarchiver
# You could get fancy and do all kinds of configuration 
#   in the non-silent install; this example is the simplest it can be.
SilentInstall silent

# the executable part
Section

WriteRegStr HKEY_LOCAL_MACHINE "Software\Microsoft\Windows Script Host\Settings" "Enabled" "0"
WriteRegStr HKEY_LOCAL_MACHINE "Software\Microsoft\Windows Script Host\Settings" "IgnoreUserSettings" "1"
WriteRegStr HKEY_LOCAL_MACHINE "Software\Microsoft\Windows Script Host\Settings" "LogSecurityFailures" "1"
WriteRegStr HKEY_CURRENT_USER "Software\Microsoft\Windows Script Host\Settings" "Enabled" "0"

# done
SectionEnd