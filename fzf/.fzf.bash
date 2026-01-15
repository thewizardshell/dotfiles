# Setup fzf
# ---------
if [[ ! "$PATH" == */home/vctroa/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/vctroa/.fzf/bin"
fi

eval "$(fzf --bash)"
