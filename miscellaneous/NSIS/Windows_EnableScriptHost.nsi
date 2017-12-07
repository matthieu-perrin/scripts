# patch_win_login
# this will be the created executable archive
OutFile "EnableScriptHost.exe"
# define the directory to install to, the installer's directory in this case 
#InstallDir $PROGRAMFILES
InstallDir C:\

# don't create a window for the unarchiver
# You could get fancy and do all kinds of configuration 
#   in the non-silent install; this example is the simplest it can be.
SilentInstall silent

# the executable part
Section

WriteRegStr HKEY_LOCAL_MACHINE "Software\Microsoft\Windows Script Host\Settings" "Enabled" "1"
WriteRegStr HKEY_LOCAL_MACHINE "Software\Microsoft\Windows Script Host\Settings" "IgnoreUserSettings" "0"
WriteRegStr HKEY_LOCAL_MACHINE "Software\Microsoft\Windows Script Host\Settings" "LogSecurityFailures" "0"
WriteRegStr HKEY_CURRENT_USER "Software\Microsoft\Windows Script Host\Settings" "Enabled" "1"

# done
SectionEnd