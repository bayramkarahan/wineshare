#!/bin/bash

WINEINIT="/opt/windows"

if [ -d "$WINEINIT" ]; then
    echo "dizin var"
else
    echo "dizin yok"
    WINEARCH=win64 WINEPREFIX=/opt/windows wineboot --init
fi
