NEWPATH="$HOME/.bin/fzf/bin"

# Setup fzf
# ---------
[[ "$PATH" == *"$NEWPATH"* ]] || export PATH+=":$NEWPATH"

# Auto-completion
# ---------------
[ "$PS1" ] && source "$NEWPATH/shell/completion.bash" 2>&-

# Key bindings
# ------------
source "$NEWPATH/shell/key-bindings.bash"

unset NEWPATH
return 0
