# .zprofile
# ログインシェルのログイン時に一度だけ読み込まれる．PATH関係とか！

# .zshrcを読み込む
# source ~/.zshrc

# pythonコマンドでsystemデフォルトのpython2ではなくhomebrewから入れたpython3を使う
# (2019.06.25コメントアウト)homebrewから入れたpython3ではなくpyenvのpythonを使うことにしたため．
# alias python='python3'
# alias pip='pip3'

# pyenvの設定
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# gccコマンドでXcodeのgcc(clang)ではなくhomebrewで入れたgccを使う
alias gcc='gcc-10'

#nodeのPATHを追加
export PATH="$PATH:$HOME/.nodebrew/current/bin"

#Android adbのPATHを追加
export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools"

# jenvのPATHを追加
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# MySQLのPATHを追加
export PATH=$PATH:/usr/local/mysql/bin
