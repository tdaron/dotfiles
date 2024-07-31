#!/bin/sh
export TERM=xterm # disable color
export PAGER=""

if [ -e ~/.config/helix/exec.env ]; then
  source ~/.config/helix/exec.env 2> /dev/null
fi

if [ -e "$PWD" ]; then
  cd "$PWD"
else
  PWD=$(pwd)
fi

stdin=$(cat)
echo "$stdin"
echo
eval "$stdin"
echo '['"$PWD"']$'

env > ~/.config/helix/exec.env 2>/dev/null
