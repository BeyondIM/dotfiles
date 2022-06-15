
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
export ANDROID_HOME=$HOME/Android/sdk
export GOPROXY=https://proxy.golang.com.cn,direct
export GO111MODULE=on
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export QT_QPA_PLATFORMTHEME="qt5ct"
export VISUAL=vim
#export QT_SCREEN_SCALE_FACTORS=1.5
#export GDK_SCALE=2
#export GDK_DPI_SCALE=0.5
export AUDIODRIVER=alsa
typeset -gU path
path=(
    $HOME/bin
    $HOME/go/bin
    $path
)

