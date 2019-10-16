# Setup fzf
# ---------
if [[ ! "$PATH" == */home/guillaume/.bin/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/guillaume/.bin/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/guillaume/.bin/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/guillaume/.bin/fzf/shell/key-bindings.bash"
