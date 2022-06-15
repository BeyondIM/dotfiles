#!/usr/bin/env bash
dingtalkgov_main_window_id=$(wmctrl -l -G -p -x | grep "[d]ingtalkgov.exe.dingtalkgov.exe" | awk '{print $1}')
if [[ ! -z "${dingtalkgov_main_window_id}" ]]; then
	dingtalkgov_main_window_shadow_id="${dingtalkgov_main_window_id%*${dingtalkgov_main_window_id:(-4)}}0017"
	xdotool windowunmap ${dingtalkgov_main_window_shadow_id}
	dingtalkgov_notification_window_shadow_id="${dingtalkgov_main_window_id%*${dingtalkgov_main_window_id:(-4)}}003f"
	xdotool windowunmap ${dingtalkgov_notification_window_shadow_id}
fi

wechat_main_window_id=$(wmctrl -l -G -p -x | grep "[w]echat.exe.wechat.exe" | awk '{print $1}')
if [[ ! -z "${wechat_main_window_id}" ]]; then
	wechat_main_window_shadow_id="${wechat_main_window_id%*${wechat_main_window_id:(-4)}}0014"
	xdotool windowunmap ${wechat_main_window_shadow_id}
fi
