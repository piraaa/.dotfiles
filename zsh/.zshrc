# .zshrc
# ログインシェルとインタラクティブシェルで読み込まれる

# 補完機能を有効にする
autoload -U compinit && compinit

# 補完候補をカーソルキーで選択可能にする
zstyle ':completion:*:default' menu select=1

# 大文字小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# lsコマンドの出力に色をつける
autoload colors
colors
export LSCOLORS='GxfxcxdxbxegedabagGxGx'
alias ls="ls -G"

# cdを省略する
setopt auto_cd

# カレントディレクトリが変更した時に発火するhook関数でcdしたときに自動でlsする
function chpwd(){ ls }

# プロンプトの形式
PROMPT='[%n@%m]# '
RPROMPT='[%d]'

# 重複PATHを追加しない
typeset -U path cdpath fpath manpath

# よく使うコマンドの省略形たち
alias l=ls
alias la='ls -a'
alias ll='ls -l'
alias sl=ls
alias ..='cd ..'
alias rm='rm -i' #削除するか確認する
alias mv='mv -i' #上書きするか確認する
alias cp='cp -i' #上書きするか確認する
alias t=touch
alias c=clear
#alias emacs=vim
alias 'youtube-dl-mp3'='youtube-dl -x --audio-format mp3 --audio-quality 0'

# ヒストリー
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt extended_history #ヒストリーに実行時刻も記録することで閉じたセッションで実行したコマンドもhistoryコマンドで時刻確認できるようにする
#setopt hist_ignore_dups #直前のコマンドの重複を削除
setopt hist_ignore_all_dups #重複したコマンドはヒストリーに残さない
setopt share_history #同時に起動したzshの間でヒストリーを共有する

# オプション
setopt no_beep #ビープ音なし
setopt interactive_comments #シャープでコメントアウト
setopt extended_glob #ファイル名で正規表現(#,~,^)を使う