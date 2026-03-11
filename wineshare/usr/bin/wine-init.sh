#!/bin/bash

# Live sistem kontrolü
if grep -q "boot=live" /proc/cmdline; then
    echo "Live sistem tespit edildi. Wine init atlanıyor."
    exit 0
fi

WINEINIT="/opt/windows"

if [ -d "$WINEINIT" ]; then
    echo "dizin var"
else
    echo "dizin yok"
    WINEARCH=win64 WINEPREFIX=/opt/windows wineboot --init
fi
