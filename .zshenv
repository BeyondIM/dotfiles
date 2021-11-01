# Start configuration added by Zim install {{{
#
# User configuration sourced by all invocations of the shell
#

# Define Zim location
: ${ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim}
# }}} End configuration added by Zim install

export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
export ANDROID_HOME=$HOME/Android/Sdk
export GOPROXY=https://goproxy.io,direct
export GO111MODULE=on
typeset -gU path
path=(
    $HOME/bin
    $HOME/.rbenv/bin
    $HOME/Android/flutter/bin
    $ANDROID_HOME/tools
    $ANDROID_HOME/platform-tools
    $path
)

