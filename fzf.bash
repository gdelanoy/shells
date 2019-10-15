# Setup fzf
# ---------
if [[ ! "$PATH" == */home/guillaume/.git/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/guillaume/.git/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/guillaume/.git/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/guillaume/.git/fzf/shell/key-bindings.bash"
