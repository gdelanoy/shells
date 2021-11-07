#!/bin/bash
# [ -z "$(byobu list-sessions | grep  serveur-$(date +%F_%Hh._%Mmin.))" ] && exit

 cd ~
 byobu-tmux new-session -d -s serveur-$(date +%F_%Hh_%Mmin) # Crée une nouvelle session détachée
 byobu-tmux rename-window -t serveur-$(date +%F_%Hh_%Mmin):0 'ProxMox' # Byobu se lance avec une seule fenêtre, on va la renommer.
 byobu split-window -v
 byobu-tmux send-keys -t 0 'ssh serveur' 'C-m'
 byobu-tmux send-keys -t 1 'ssh serveur' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 0 'gotop' 'C-m'
 byobu-tmux send-keys -t 1 'glances' 'C-m'

 byobu-tmux new-window
 byobu-tmux rename-window 'Logs'
 byobu split-window -v
 byobu-tmux send-keys -t 0 'ssh serveur' 'C-m'
 byobu-tmux send-keys -t 1 'ssh serveur' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 1 'lnav /var/log/ /var/log/*/' 'C-m'
 byobu-tmux send-keys -t 0 'whowatch' 'C-m'

 byobu-tmux new-window
 byobu-tmux rename-window 'Shells'
 byobu split-window -v
 byobu-tmux send-keys -t 0 'ssh serveur' 'C-m'
 byobu-tmux send-keys -t 1 'ssh serveur' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 1 'bash' 'C-m'
 byobu-tmux send-keys -t 1 'clear' 'C-m'
 byobu-tmux send-keys -t 0 'fish' 'C-m'
 byobu-tmux send-keys -t 0 'clear' 'C-m'

 byobu-tmux new-window
 byobu-tmux rename-window 'Syno'
 byobu split-window -v
 byobu-tmux send-keys -t 0 'ssh serveur' 'C-m'
 byobu-tmux send-keys -t 1 'ssh serveur' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 0 'ping -c1 syno && ssh syno || ping -c1 portable && ssh portable || ping -c1 chambre && ssh chambre' 'C-m'
 byobu-tmux send-keys -t 0 'sleep 1' 'C-m'
 byobu-tmux send-keys -t 0 'clear' 'C-m'
 byobu-tmux send-keys -t 0 'figlet $(hostname) | lolcat' 'C-m'
# byobu-tmux send-keys -t 0 '( ( ping -c1 syno && clear;sh syno ) || echo "Le NAS Synology est injoignable." )' 'C-m'
 byobu-tmux send-keys -t 1 'clear' 'C-m'
 byobu-tmux send-keys -t 1 '( ( ping -c1 syno && clear;sursyno ) || echo "Le NAS Synology est injoignable." )' 'C-m'

 byobu-tmux new-window
 byobu-tmux rename-window 'Sept'
 byobu split-window -h

# byobu-tmux send-keys 'blackr' 'C-m'

 # It's OK. If that session isn't already running, fire it :

# Enter Byobu
byobu-tmux attach -t serveur-$(date +%F_%Hh_%Mmin)

