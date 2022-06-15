#!/usr/bin/env bash
env WINEPREFIX="$HOME/.wine/Wechat" wine "$HOME/.wine/Wechat/drive_c/Program Files (x86)/Tencent/WeChat/WeChat.exe" >/dev/null 2>&1 &
while (($(($(wmctrl -l -G -p -x | grep "wechat.exe.wechat.exe" | grep -v "urxvt.URxvt" | awk '{print $6}'))) < 450)); do
  sleep 5
done
i3-msg '[class="^wechat.exe$" title="^微信$"] fullscreen disable, floating enable, sticky disable, resize set 1465 1205, move position 1470 0'
/bin/bash $HOME/bin/remove-wine-shadow.sh

