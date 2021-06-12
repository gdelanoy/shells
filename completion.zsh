zstyle ':completion:*' use-cache on
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' cache-path ~/.oh-my-zsh/cache
zstyle ':completion:*' completer _extensions _complete _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*'   force-list always
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*:*:vim:*' file-patterns '^*.(aux|log|pdf):source-files' '*:all-files'
zstyle ':completion:*:*:cp:*' file-sort modification reverse
zstyle ':completion:*:*:mv:*' file-sort modification reverse
zstyle ':completion:*:*:*:*:descriptions' format '%F{green}-- %d --%f'
zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'
zstyle ':completion:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'
zstyle ':completion:*' complete-options true
zformat -f REPLY "La réponse est '%3(c.oui.non)'." c:3
zstyle ':completion:*:*:*:default' menu yes select search

zstyle ':fzf-tab:*' switch-group '<' '>

'
