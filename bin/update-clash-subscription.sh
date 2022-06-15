#!/usr/bin/env bash
clash_url='https://mojie.link/api/v1/client/subscribe?token=637a039300337a0f75e6458604a6631b&flag=clash'
config=${HOME}/.config/clash/config.yaml
external=$(sed -n '/external-controller/p' ${config} | awk -F"'" '{print $2}')

gen_put_data() {
    cat <<EOF
{
    "path": "${config}"
}
EOF
}

if [[ -z $(pidof clash) ]]; then
    /sbin/clash
    sleep 10
fi

curl -L -o ${config}.tmp ${clash_url}
diff ${config} ${config}.tmp
if (( $? )); then
    cp -f ${config}.tmp ${config}
    curl -X PUT -H "Content-Type: application/json" -d "$(gen_put_data)" http://${external}/configs
fi

