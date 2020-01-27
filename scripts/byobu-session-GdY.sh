#!/bin/bash
if [ -z "$(byobu list-sessions | grep $USER)" ]
 then
 byobu-tmux new-session -d -s $USER # Crée une nouvelle session détachée
 byobu-tmux rename-window -t $USER:0 'Glances' # Byobu se lance avec une seule fenêtre, on va la renommer.
 byobu-tmux send-keys 'glances' 'C-m'

 byobu-tmux new-window
 byobu-tmux rename-window 'Gotop'
 byobu-tmux send-keys -t 0 'gotop' 'C-m'

 byobu-tmux new-window
 byobu-tmux rename-window 'Logs'
 byobu-tmux send-keys 'lnav /var/log/ /var/log/*/' 'C-m'

 byobu-tmux new-window
 byobu-tmux rename-window 'Qui'
 byobu-tmux send-keys  'whowatch' 'C-m'

# Encore une fenêtre ( ssh serveur + serveuse ) ...
 byobu-tmux new-window
 byobu-tmux rename-window 'Serveurs'
 byobu split-window -v
 byobu-tmux send-keys -t 0 'ssh formateur@serveur || exit' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 0 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'ssh formateur@serveuse || exit' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 1 'clear' 'C-m'

 # On crée une nouvelle fenêtre et on la renomme ...
 byobu-tmux new-window
 byobu-tmux rename-window 'Files'
 byobu split-window -v
 byobu-tmux send-keys -t 0 'cd /; fcd' 'C-m'
 byobu-tmux send-keys -t 1 'br --dp --hidden --sizes' 'C-m'

 # On crée une autre fenêtre ( Deux shells )...
 byobu-tmux new-window
 byobu-tmux rename-window 'Ansible'
 byobu split-window -v
 byobu-tmux send-keys -t 1 'sudo su' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 1 'cd && clear' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 1 'neo' 'C-m'
 byobu-tmux send-keys -t 0 'ssh formateur@localhost' 'C-m'
 byobu-tmux send-keys -t 0 'cd ~/ansible' 'C-m'
 byobu-tmux send-keys -t 0 'clear' 'C-m'

 # Une nouvelle fenêtre pour vim avec son explorateur ...
 byobu-tmux new-window
 byobu-tmux rename-window 'VIM'
 byobu-tmux send-keys 'vim' 'C-m'
 sleep 1
 byobu-tmux send-keys 'C-a' 'C-m'

# On crée une autre fenêtre (user formateur + shell fish )...
 byobu-tmux new-window
 byobu-tmux rename-window 'fizsh'
 byobu split-window -v
 byobu-tmux send-keys -t 0 'zsh' 'C-m'
 byobu-tmux send-keys -t 0 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'fish' 'C-m'
 byobu-tmux send-keys -t 1 'cd .git' 'C-m'
 byobu-tmux send-keys -t 1 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'll' 'C-m'

# Encore une fenêtre  ...
 byobu-tmux new-window
 byobu-tmux rename-window 'Docs'
 byobu split-window -v
 byobu-tmux send-keys -t 0 'clear' 'C-m'
 byobu-tmux send-keys -t 0 'cd ~/Documents/Documentation' 'C-m'
 byobu-tmux send-keys -t 0 'find . -iname "' 

 byobu-tmux send-keys -t 1 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'cd ~/Documents/Documentation' 'C-m'
 byobu-tmux send-keys -t 1 'grep -ri "" *' 

 # Encore une fenêtre  ...
 byobu-tmux new-window
 byobu-tmux rename-window 'Slides'
 byobu split-window -v
 byobu-tmux send-keys -t 0 'clear' 'C-m'
 byobu-tmux send-keys -t 0 'cd ~/Documents/Formation/slides-poe/reveal-js' 'C-m'
 byobu-tmux send-keys -t 0 'll ..' 'C-m'
 byobu-tmux send-keys -t 0 './start'
 byobu-tmux send-keys -t 1 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'cd ~/Documents/Formations/slides-poe/' 'C-m'

# Encore une fenêtre  ...
 byobu-tmux new-window
 byobu-tmux rename-window 'Double'
 byobu split-window -v
 byobu-tmux send-keys -t 0 'clear' 'C-m'
 byobu-tmux send-keys -t 0 'safe' 'C-m'
 byobu-tmux send-keys -t 1 'clear' 'C-m'

# Encore une fenêtre  ...
 byobu-tmux new-window
 byobu-tmux rename-window 'Simple'
 # byobu-tmux send-keys 'byz' 'C-m'
fi
# Enter Byobu
 byobu-tmux attach -t $USER 
