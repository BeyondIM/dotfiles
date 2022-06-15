#!/usr/bin/env bash
/home/beyondim/.local/bin/tccli tts TextToVoice --cli-unfold-argument --region ap-shanghai --Text $(date +"当前时间%H点%M分") --VoiceType=1009 --SessionId $RANDOM --ModelType 1 | jq -r ".Audio" | base64 -d | play -t wav -q -
