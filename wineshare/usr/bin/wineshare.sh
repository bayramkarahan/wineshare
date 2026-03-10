#!/bin/bash
WINEINIT="/opt/windows"
WINELINK="$HOME/.wine"
WINEMONO="/opt/windows/drive_c/windows/mono"

#-------------------------------------------------
#wine init
#-------------------------------------------------
if [ -d $WINEINIT ]; then
	echo "dizin var"
else
	echo "dizin yok"
	#WINEARCH=win64 WINEPREFIX=/opt/windows wineboot --init
fi
/usr/bin/winechown $USER /opt/windows

#-------------wine extension----------------------
rm $HOME/.local/share/applications/wine-extension*

#-------------------------------------------------
# wine link
#-------------------------------------------------
if [ -f $WINELINK ]; then
	echo "dosya var"
	ln -sf /opt/windows .wine
else
	ln -sf /opt/windows .wine
fi

#-------------------------------------------------
# mono install
#-------------------------------------------------
if [ -d $WINEMONO ]; then
	echo "dosya var"
else
	echo "dosya yok"
	wine msiexec /i /opt/wine-mono-9.0.0-x86.msi
fi
