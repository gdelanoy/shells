#!/bin/bash
cd ~
if [ -z "$(byobu list-sessions | grep $USER)" ]
 then
 byobu-tmux new-session -d -s $USER # Crée une nouvelle session détachée
 byobu-tmux rename-window -t $USER:0 'Glances' # Byobu se lance avec une seule fenêtre, on va la renommer.
 byobu-tmux send-keys 'glances' 'C-m'

 byobu-tmux new-window
 byobu-tmux rename-window 'Gotop'
 byobu-tmux send-keys -t 0 'gotop' 'C-m'

 byobu-tmux new-window
 byobu-tmux rename-window 'Who'
 byobu-tmux send-keys -t 0 'whowatch' 'C-m'


 byobu-tmux new-window
 byobu-tmux rename-window 'Logs'
 byobu-tmux send-keys -t 1 'lnav /var/log/ /var/log/*/' 'C-m'

 # On crée une nouvelle fenêtre et on la renomme ...
 byobu-tmux new-window
 byobu-tmux rename-window 'Files'
 byobu split-window -v
 byobu-tmux send-keys -t 0 'cd /; fcd' 'C-m'
 # byobu-tmux send-keys -t 1 'ranger' 'C-m'
 byobu-tmux send-keys -t 1 'nnn' 'C-m'

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
 byobu-tmux send-keys -t 0 'bash' 'C-m'
 byobu-tmux send-keys -t 0 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'fish' 'C-m'
 byobu-tmux send-keys -t 1 'cd .bin' 'C-m'
 byobu-tmux send-keys -t 1 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'll' 'C-m'

# Et une autre :

 byobu-tmux new-window
 byobu-tmux rename-window 'Un'
 byobu split-window -v
 byobu-tmux send-keys -t 1 'sudo su' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 1 'cd && clear' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 1 'neo' 'C-m'
 byobu-tmux send-keys -t 0 'clear' 'C-m'
 byobu-tmux send-keys -t 0 'tue' 'C-m'

# Create another window

 byobu-tmux new-window
 byobu-tmux rename-window 'Deux'
 byobu split-window -v
 byobu-tmux send-keys -t 1 '( ping -c1 salon && ssh salon ) || ( ping -c1 serveur && ssh serveur ) || ( ping -c1 chambre && ssh chambre ) || ssh -X aureo@localhost' 'C-m'
 byobu-tmux send-keys -t 1 'clear' 'C-m'
 byobu-tmux send-keys -t 0 'ping -c1 syno && ssh syno' 'C-m'
 byobu-tmux send-keys -t 0 'clear' 'C-m'

# Yet another window

 byobu-tmux new-window
 byobu-tmux rename-window 'Safe'
# byobu split-window -v
 byobu-tmux send-keys -t 1 'clear' 'C-m'
# byobu-tmux send-keys -t 1 '[ -d /home/guillaume/safe-in-cloud/yoga ] || safe' 'C-m'
# byobu-tmux send-keys -t 0 'calcurse' 'C-m'

# And a last one

 byobu-tmux new-window
 byobu-tmux rename-window 'Recent'
 byobu split-window -v
 byobu-tmux send-keys -t 1 'cd ~/Téléchargements' 'C-m'
 byobu-tmux send-keys -t 1 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'find . -ctime -15 | lolcat' 'C-m'
 byobu-tmux send-keys -t 1 'find . -iname "*'
 byobu-tmux send-keys -t 0 'cd ~/Vidéos' 'C-m'
 byobu-tmux send-keys -t 0 'clear' 'C-m'
 byobu-tmux send-keys -t 0 'find . -iname "*.*" -ctime -15 | lolcat' 'C-m'
 byobu-tmux send-keys -t 0 'find . -iname "*'

# OK, that wasn't the last one yet ...

 byobu-tmux new-window
 byobu-tmux rename-window 'Cinq'
 byobu split-window -v
 byobu-tmux send-keys -t 1 'cd ~/Musique' 'C-m'
 byobu-tmux send-keys -t 1 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'joue' 'C-m'
 byobu-tmux send-keys -t 0 'clear' 'C-m'
 byobu-tmux send-keys -t 0 'sursyno'

# THERE is the last one !  ;-)
 byobu-tmux new-window
 byobu-tmux rename-window 'Simple'
 byobu-tmux send-keys 'bofh' 'C-m'
fi
# Enter Byobu
 byobu-tmux attach -t $USER
