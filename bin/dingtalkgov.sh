#!/usr/bin/env bash
env WINEPREFIX="$HOME/.wine/DingtalkGov" wine "$HOME/.wine/DingtalkGov/drive_c/Program Files (x86)/DingTalkGov/DingTalkGovLauncher.exe" >/dev/null 2>&1 &
sleep 10
#/bin/bash $HOME/bin/remove-wine-shadow.sh

