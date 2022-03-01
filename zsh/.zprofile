# .zprofile
# ログインシェルのログイン時に一度だけ読み込まれる．PATH関係とか！

# .zshrcを読み込む
source ~/.zshrc

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
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# nodebrewのPATHを追加
# [2021.06.28追記]anyenv/nodenvを使用することにしたため削除
# export PATH="$PATH:$HOME/.nodebrew/current/bin"

# anyenv
eval "$(anyenv init -)"

# Android adbのPATHを追加
export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools"

# MySQLのPATHを追加
export PATH=$PATH:/usr/local/mysql/bin

# k8sの補完機能 (https://kubernetes.io/ja/docs/reference/kubectl/cheatsheet/)
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)

