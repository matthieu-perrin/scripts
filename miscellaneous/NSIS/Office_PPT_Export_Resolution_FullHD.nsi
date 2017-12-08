# THIS SCRIPT IS PROVIDED "AS IS", WITHOUT ANY WARRANTY, AND WITHOUT ANY SUPPORT. 
# Matthieu PERRIN - 2016 - CC-BY-SA
# this will be the created executable archive
# this will be the created executable archive
OutFile "PPT_Export_Resolution.exe"

InstallDir $PROGRAMFILES
#Icon "reso.ico"

SilentInstall silent

Section

WriteRegDWORD HKEY_CURRENT_USER "Software\Microsoft\Office\12.0\PowerPoint\options" "ExportBitmapResolution" 0x96
WriteRegDWORD HKEY_CURRENT_USER "Software\Microsoft\Office\14.0\PowerPoint\options" "ExportBitmapResolution" 0x96
WriteRegDWORD HKEY_CURRENT_USER "Software\Microsoft\Office\15.0\PowerPoint\options" "ExportBitmapResolution" 0x96
WriteRegDWORD HKEY_CURRENT_USER "Software\Microsoft\Office\16.0\PowerPoint\options" "ExportBitmapResolution" 0x96


SectionEnd