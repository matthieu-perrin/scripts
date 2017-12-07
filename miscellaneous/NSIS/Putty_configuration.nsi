# eMaintenance - Matthieu PERRIN (OBS) - Juillet 2014
# this will be the created executable archive
OutFile "putty_configuration.exe"
# define the directory to install to, the installer's directory in this case 
InstallDir $PROGRAMFILES
#InstallDir E:\

# don't create a window for the unarchiver
# You could get fancy and do all kinds of configuration 
#   in the non-silent install; this example is the simplest it can be.
SilentInstall silent
#Icon "settings-13-128.ico"

# the executable part
Section



WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions" "" ""
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Present" 0x1
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "HostName" ""
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "LogFileName" "putty.log"
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "LogType" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "LogFileClash" 0xffffffff
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "LogFlush" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "SSHLogOmitPasswords" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "SSHLogOmitData" 0x0
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Protocol" "ssh"
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "PortNumber" 0x16
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "CloseOnExit" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "WarnOnClose" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "PingInterval" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "PingIntervalSecs" 0x5
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "TCPNoDelay" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "TCPKeepalives" 0x0
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "TerminalType" "xterm"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "TerminalSpeed" "38400,38400"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "TerminalModes" "INTR=A,QUIT=A,ERASE=A,KILL=A,EOF=A,EOL=A,EOL2=A,START=A,STOP=A,SUSP=A,DSUSP=A,REPRINT=A,WERASE=A,LNEXT=A,FLUSH=A,SWTCH=A,STATUS=A,DISCARD=A,IGNPAR=A,PARMRK=A,INPCK=A,ISTRIP=A,INLCR=A,IGNCR=A,ICRNL=A,IUCLC=A,IXON=A,IXANY=A,IXOFF=A,IMAXBEL=A,ISIG=A,ICANON=A,XCASE=A,ECHO=A,ECHOE=A,ECHOK=A,ECHONL=A,NOFLSH=A,TOSTOP=A,IEXTEN=A,ECHOCTL=A,ECHOKE=A,PENDIN=A,OPOST=A,OLCUC=A,ONLCR=A,OCRNL=A,ONOCR=A,ONLRET=A,CS7=A,CS8=A,PARENB=A,PARODD=A,"
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "AddressFamily" 0x0
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "ProxyExcludeList" ""
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "ProxyDNS" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "ProxyLocalhost" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "ProxyMethod" 0x0
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "ProxyHost" "proxy"
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "ProxyPort" 0x50
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "ProxyUsername" ""
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "ProxyPassword" ""
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "ProxyTelnetCommand" "connect %host %port\n"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Environment" ""
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "UserName" ""
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "UserNameFromEnvironment" 0x0
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "LocalUserName" ""
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "NoPTY" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Compression" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "TryAgent" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "AgentFwd" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "GssapiFwd" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "ChangeUsername" 0x0
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Cipher" "aes,blowfish,3des,WARN,arcfour,des"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "KEX" "dh-gex-sha1,dh-group14-sha1,dh-group1-sha1,rsa,WARN"
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "RekeyTime" 0x3c
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "RekeyBytes" "1G"
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "SshNoAuth" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "SshBanner" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "AuthTIS" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "AuthKI" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "AuthGSSAPI" 0x0
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "GSSLibs" "gssapi32,sspi,custom"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "GSSCustom" ""
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "SshNoShell" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "SshProt" 0x2
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "LogHost" ""
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "SSH2DES" 0x0
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "PublicKeyFile" ""
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "RemoteCommand" ""
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "RFCEnviron" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "PassiveTelnet" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "BackspaceIsDelete" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "RXVTHomeEnd" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "LinuxFunctionKeys" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "NoApplicationKeys" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "NoApplicationCursors" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "NoMouseReporting" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "NoRemoteResize" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "NoAltScreen" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "NoRemoteWinTitle" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "RemoteQTitleAction" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "NoDBackspace" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "NoRemoteCharset" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "ApplicationCursorKeys" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "ApplicationKeypad" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "NetHackKeypad" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "AltF4" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "AltSpace" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "AltOnly" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "ComposeKey" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "CtrlAltKeys" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "TelnetKey" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "TelnetRet" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "LocalEcho" 0x2
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "LocalEdit" 0x2
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Answerback" "PuTTY"
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "AlwaysOnTop" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "FullScreenOnAltEnter" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "HideMousePtr" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "SunkenEdge" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "WindowBorder" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "CurType" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "BlinkCur" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Beep" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "BeepInd" 0x0
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "BellWaveFile" ""
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "BellOverload" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "BellOverloadN" 0x5
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "BellOverloadT" 0x7d0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "BellOverloadS" 0x1388
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "ScrollbackLines" 0x4e20
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "DECOriginMode" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "AutoWrapMode" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "LFImpliesCR" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "CRImpliesLF" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "DisableArabicShaping" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "DisableBidi" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "WinNameAlways" 0x1
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "WinTitle" ""
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "TermWidth" 0x50
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "TermHeight" 0x18
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Font" "Courier New"
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "FontIsBold" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "FontCharSet" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "FontHeight" 0xa
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "FontQuality" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "FontVTMode" 0x4
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "UseSystemColours" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "TryPalette" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "ANSIColour" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Xterm256Colour" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "BoldAsColour" 0x1
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Colour0" "187,187,187"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Colour1" "255,255,255"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Colour2" "0,0,0"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Colour3" "85,85,85"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Colour4" "0,0,0"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Colour5" "0,255,0"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Colour6" "0,0,0"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Colour7" "85,85,85"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Colour8" "187,0,0"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Colour9" "255,85,85"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Colour10" "0,187,0"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Colour11" "85,255,85"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Colour12" "187,187,0"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Colour13" "255,255,85"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Colour14" "0,0,187"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Colour15" "85,85,255"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Colour16" "187,0,187"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Colour17" "255,85,255"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Colour18" "0,187,187"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Colour19" "85,255,255"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Colour20" "187,187,187"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Colour21" "255,255,255"
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "RawCNP" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "PasteRTF" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "MouseIsXterm" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "RectSelect" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "MouseOverride" 0x1
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Wordness0" "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Wordness32" "0,1,2,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Wordness64" "1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,2"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Wordness96" "1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Wordness128" "1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Wordness160" "1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Wordness192" "2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,2,2,2,2,2,2,2,2"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Wordness224" "2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,2,2,2,2,2,2,2,2"
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "LineCodePage" "UTF-8"
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "CJKAmbigWide" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "UTF8Override" 0x1
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "Printer" ""
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "CapsLockCyr" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "ScrollBar" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "ScrollBarFullScreen" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "ScrollOnKey" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "ScrollOnDisp" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "EraseToScrollback" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "LockSize" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "BCE" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "BlinkText" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "X11Forward" 0x0
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "X11Display" ""
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "X11AuthType" 0x1
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "X11AuthFile" ""
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "LocalPortAcceptAll" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "RemotePortAcceptAll" 0x0
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "PortForwardings" ""
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "BugIgnore1" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "BugPlainPW1" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "BugRSA1" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "BugIgnore2" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "BugHMAC2" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "BugDeriveKey2" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "BugRSAPad2" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "BugPKSessID2" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "BugRekey2" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "BugMaxPkt2" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "StampUtmp" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "LoginShell" 0x1
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "ScrollbarOnLeft" 0x0
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "BoldFont" ""
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "BoldFontIsBold" 0x18f93c
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "BoldFontCharSet" 0x583cb8
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "BoldFontHeight" 0x77aa71f5
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "WideFont" ""
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "WideFontIsBold" 0x18c72c
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "WideFontCharSet" 0x18f93c
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "WideFontHeight" 0x475810
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "WideBoldFont" ""
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "WideBoldFontIsBold" 0x3f8
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "WideBoldFontCharSet" 0x18c72c
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "WideBoldFontHeight" 0x100dd02
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "ShadowBold" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "ShadowBoldOffset" 0x1
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "SerialLine" "COM1"
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "SerialSpeed" 0x2580
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "SerialDataBits" 0x8
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "SerialStopHalfbits" 0x2
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "SerialParity" 0x0
WriteRegDWORD HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "SerialFlowControl" 0x1
WriteRegStr HKEY_CURRENT_USER "Software\SimonTatham\PuTTY\Sessions\Default%20Settings" "WindowClass" ""


# done
SectionEnd