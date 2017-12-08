# THIS SCRIPT IS PROVIDED "AS IS", WITHOUT ANY WARRANTY, AND WITHOUT ANY SUPPORT. 
# Matthieu PERRIN - 2017 - CC-BY-SA
# this will be the created executable archive
OutFile "priority.exe"

#InstallDir $PROGRAMFILES
InstallDir C:\

SilentInstall silent

Section

WriteRegDWORD HKEY_LOCAL_MACHINE "SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\explorer.exe\PerfOptions" "CpuPriorityClass" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Winword.exe\PerfOptions" "CpuPriorityClass" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\outlook.exe\PerfOptions" "CpuPriorityClass" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\opera.exe\PerfOptions" "CpuPriorityClass" 0x3

SectionEnd