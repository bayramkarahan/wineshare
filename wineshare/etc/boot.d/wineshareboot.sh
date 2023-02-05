#!/bin/bash
WINEDIR="/opt/windows"
#-------------------------------------------------
#-------------------------------------------------
if [ ! -d "$WINEDIR" ]; then
	echo "klasor oluşturulacak"
	mkdir /opt/windows
	chmod 777 /opt/windows
	#WINEPREFIX="/opt/windows" wineboot -i &
	#winetricks dotnet45 &
#else
#	echo "klasor var"
fi

