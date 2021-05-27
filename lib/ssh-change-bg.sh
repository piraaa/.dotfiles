#! /bin/sh

# Ctrl-Cで止めたとき
trap 'echo -e "Interrupted.\033]1337; SetColors=bg=000\a"; exit;' INT

echo -ne '\033]1337;SetColors=bg=200\a' # iTermの背景を赤くする
ssh "$@"
echo -ne '\033]1337;SetColors=bg=000\a' # iTeamの背景を黒に戻す