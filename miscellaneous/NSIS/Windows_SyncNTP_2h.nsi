# THIS SCRIPT IS PROVIDED "AS IS", WITHOUT ANY WARRANTY, AND WITHOUT ANY SUPPORT. 
# Matthieu PERRIN - 2017 - CC-BY-SA
# this will be the created executable archive
OutFile "ntp_2h.exe"

#InstallDir $PROGRAMFILES
InstallDir C:\

SilentInstall silent
#Icon "time-128.ico"

Section

WriteRegDWORD HKEY_LOCAL_MACHINE "SYSTEM\CurrentControlSet\Services\W32Time\TimeProviders\NtpClient" "SpecialPollInterval" 0x1c20

SectionEnd