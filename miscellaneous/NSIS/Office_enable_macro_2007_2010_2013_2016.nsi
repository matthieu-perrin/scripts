# patch_win_login
# this will be the created executable archive
OutFile "office_enable_macro_2016.exe"
# define the directory to install to, the installer's directory in this case 
#InstallDir $PROGRAMFILES
InstallDir C:\

# don't create a window for the unarchiver
# You could get fancy and do all kinds of configuration 
#   in the non-silent install; this example is the simplest it can be.
SilentInstall silent

# the executable part
Section

WriteRegDWORD HKEY_CURRENT_USER "Software\Policies\Microsoft\Office\16.0\Excel\Security" "vbawarnings" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\Policies\Microsoft\Office\16.0\Word\Security" "vbawarnings" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\Policies\Microsoft\Office\15.0\Excel\Security" "vbawarnings" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\Policies\Microsoft\Office\15.0\Word\Security" "vbawarnings" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\Policies\Microsoft\Office\14.0\Excel\Security" "VBAWarnings" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\Policies\Microsoft\Office\14.0\Word\Security" "VBAWarnings" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\Policies\Microsoft\Office\12.0\Excel\Security" "VBAWarnings" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\Policies\Microsoft\Office\12.0\Word\Security" "VBAWarnings" 0x1

# done
SectionEnd