# eMaintenance - Matthieu PERRIN (OBS) - Juillet 2014
# this will be the created executable archive
OutFile "PPT_Export_Resolution.exe"
# define the directory to install to, the installer's directory in this case 
InstallDir $PROGRAMFILES
#InstallDir E:\
#http://10.185.98.99/files/PPT_Export_Resolution.exe
#Icon "reso.ico"

# don't create a window for the unarchiver
# You could get fancy and do all kinds of configuration 
#   in the non-silent install; this example is the simplest it can be.
SilentInstall silent

# the executable part
Section

WriteRegDWORD HKEY_CURRENT_USER "Software\Microsoft\Office\12.0\PowerPoint\options" "ExportBitmapResolution" 0x96
WriteRegDWORD HKEY_CURRENT_USER "Software\Microsoft\Office\14.0\PowerPoint\options" "ExportBitmapResolution" 0x96
WriteRegDWORD HKEY_CURRENT_USER "Software\Microsoft\Office\15.0\PowerPoint\options" "ExportBitmapResolution" 0x96
WriteRegDWORD HKEY_CURRENT_USER "Software\Microsoft\Office\16.0\PowerPoint\options" "ExportBitmapResolution" 0x96


# done
SectionEnd