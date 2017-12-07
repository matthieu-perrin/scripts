# eMaintenance - Matthieu PERRIN (OBS) - Juillet 2014
# this will be the created executable archive
OutFile "ntp_2h.exe"
# define the directory to install to, the installer's directory in this case 
#InstallDir $PROGRAMFILES
InstallDir C:\

# don't create a window for the unarchiver
# You could get fancy and do all kinds of configuration 
#   in the non-silent install; this example is the simplest it can be.
SilentInstall silent
#Icon "time-128.ico"

# the executable part
Section

WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\Services\W32Time\TimeProviders\NtpClient" "SpecialPollInterval" 0x1c20

# done
SectionEnd