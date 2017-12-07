# patch_win_login_off
# this will be the created executable archive
OutFile "priority.exe"
# define the directory to install to, the installer's directory in this case 
#InstallDir $PROGRAMFILES
InstallDir C:\

# don't create a window for the unarchiver
# You could get fancy and do all kinds of configuration 
#   in the non-silent install; this example is the simplest it can be.
SilentInstall silent

# the executable part
Section

WriteRegDWORD HKEY_LOCAL_MACHINE "SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\explorer.exe\PerfOptions" "CpuPriorityClass" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Winword.exe\PerfOptions" "CpuPriorityClass" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\outlook.exe\PerfOptions" "CpuPriorityClass" 0x3
WriteRegDWORD HKEY_LOCAL_MACHINE "SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\opera.exe\PerfOptions" "CpuPriorityClass" 0x3

# done
SectionEnd