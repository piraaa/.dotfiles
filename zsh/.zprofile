# .zprofile
# ログインシェルのログイン時に一度だけ読み込まれる．PATH関係とか！

# homebrew # .zshrc 内で brew コマンドを使用するため .zshrc より先に実行
eval "$(/opt/homebrew/bin/brew shellenv)"

# .zshrcを読み込む
source ~/.zshrc

# anyenv
eval "$(anyenv init -)"

# gccコマンドでXcodeのgcc(clang)ではなくhomebrewで入れたgccを使う
alias gcc='gcc-11'

# pythonコマンドでsystemデフォルトのpython2ではなくhomebrewから入れたpython3を使う
# [2019.06.25追記]homebrewから入れたpython3ではなくpyenvのpythonを使うことにしたため削除
# alias python='python3'
# alias pip='pip3'

# pyenvの設定
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# jenvのPATHを追加
# jenv java
# ~/.jenv に 'jenv enable-plugin export' の JAVA_HOME 切り替え config 設定済
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# nodebrewのPATHを追加
# [2021.06.28追記]anyenv/nodenvを使用することにしたため削除
# export PATH="$PATH:$HOME/.nodebrew/current/bin"

# Android adbのPATHを追加
export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools"

# MySQLのPATHを追加
export PATH=$PATH:/usr/local/mysql/bin

# Go
export GOPATH=/USers/pira/go

# k8sの補完機能 (https://kubernetes.io/ja/docs/reference/kubectl/cheatsheet/)
autoload -Uz compinit && compinit
source <(kubectl completion zsh)

# php7.4
# PATH="/usr/local/opt/php@7.4/bin:$PATH"
# PATH="/usr/local/opt/php@7.4/sbin:$PATH"
