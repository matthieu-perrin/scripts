# THIS SCRIPT IS PROVIDED "AS IS", WITHOUT ANY WARRANTY, AND WITHOUT ANY SUPPORT. 
# Matthieu PERRIN - 2017 - CC-BY-SA
# this will be the created executable archive
OutFile "office_disable_macro_2016.exe"
InstallDir C:\

SilentInstall silent

Section

WriteRegDWORD HKEY_CURRENT_USER "Software\Policies\Microsoft\Office\16.0\Excel\Security" "vbawarnings" 0x4
WriteRegDWORD HKEY_CURRENT_USER "Software\Policies\Microsoft\Office\16.0\Word\Security" "vbawarnings" 0x4
WriteRegDWORD HKEY_CURRENT_USER "Software\Policies\Microsoft\Office\15.0\Excel\Security" "vbawarnings" 0x4
WriteRegDWORD HKEY_CURRENT_USER "Software\Policies\Microsoft\Office\15.0\Word\Security" "vbawarnings" 0x4
WriteRegDWORD HKEY_CURRENT_USER "Software\Policies\Microsoft\Office\14.0\Excel\Security" "VBAWarnings" 0x4
WriteRegDWORD HKEY_CURRENT_USER "Software\Policies\Microsoft\Office\14.0\Word\Security" "VBAWarnings" 0x4
WriteRegDWORD HKEY_CURRENT_USER "Software\Policies\Microsoft\Office\12.0\Excel\Security" "VBAWarnings" 0x4
WriteRegDWORD HKEY_CURRENT_USER "Software\Policies\Microsoft\Office\12.0\Word\Security" "VBAWarnings" 0x4

SectionEnd