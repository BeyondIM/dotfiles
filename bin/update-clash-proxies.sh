#!/usr/bin/env bash
config=${HOME}/.config/clash/config.yaml
external=$(sed -n '/external-controller/p' ${config} | awk -F"'" '{print $2}')

gen_put_data() {
    cat <<EOF
{
    "path": "${config}"
}
EOF
}

curl -X PUT -H "Content-Type: application/json" -d "$(gen_put_data)" http://${external}/configs
