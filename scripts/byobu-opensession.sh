#!/bin/bash
#####################################################
# Nom du script : byobu-opensession.sh
# Utilité: Ce script sert à créer rapidement un environnement de terminaux virtuels qui fournissent un environnement personnalisé avec
# plein d'options.
#
# Note à benêt : Pour être sauvegardé, versionné et récupéré rapidement,
# ce script est sur mon compte Github, vous le retrouvez donc dans :
# ~/.shells/scripts/ . Cependant, pour permettre des environnements
# différents selon que je sois au boulot ou à la maison, je recopie
# ce script dans ~/.scripts/ , et c'est là que je l'adapte et que je
# l'appelle. Cette copie doit être faite à la main, c'est à cet endroit
# que pointe l'alias de mon .bashrc / .zshrc !
#
# Usage: via un alias : alias hop="~/.scripts/byobu-opensession.sh"
#
# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>
# Créé le: vendredi_18/10/2019 à 22h40
#####################################################

if [ -z "$(byobu list-sessions | grep $USER)" ]
 then
 cd ~
 byobu-tmux new-session -d -s $USER # Crée une nouvelle session détachée
 byobu-tmux rename-window -t $USER:0 'Load' # Byobu se lance avec une seule fenêtre, on va la renommer.
 byobu split-window -v
 byobu-tmux send-keys -t 0 'sudo su' 'C-m'
 byobu-tmux send-keys -t 0 'gotop' 'C-m'
 byobu-tmux send-keys -t 1 'sudo su' 'C-m'
 byobu-tmux send-keys -t 1 'glances' 'C-m'

# Tiens, une autre :

 byobu-tmux new-window
 byobu-tmux rename-window 'Logs'
 byobu split-window -v
 byobu-tmux send-keys -t 1 'sudo su' 'C-m'
 byobu-tmux send-keys -t 1 'lnav /var/log/ /var/log/*/' 'C-m'
 sleep 2
 byobu-tmux send-keys -t 1 ":filter-out may be a replay" 'C-m'
 byobu-tmux send-keys -t 1 ':save-config' 'C-m'
 byobu-tmux send-keys -t 0 'sudo su' 'C-m'
 byobu-tmux send-keys -t 0 'whowatch' 'C-m'

# On crée une nouvelle fenêtre et on la renomme ...

 byobu-tmux new-window
 byobu-tmux rename-window 'Files'
 byobu split-window -v
 byobu-tmux send-keys -t 1 'ranger' 'C-m'
 byobu-tmux send-keys -t 0 'tue' 'C-m'

 # Une nouvelle fenêtre pour vim avec son explorateur ...

 byobu-tmux new-window
 byobu-tmux rename-window 'VIM'
 byobu-tmux send-keys 'vim' 'C-m'
 sleep 1
 byobu-tmux send-keys 'C-a' 'C-m'

# On crée une autre fenêtre ( Un shell zsh, un autre en fish )...

 byobu-tmux new-window
 byobu-tmux rename-window 'Shells'
 byobu split-window -v
 byobu-tmux send-keys -t 1 'bash' 'C-m'
 byobu-tmux send-keys -t 1 'clear' 'C-m'
 byobu-tmux send-keys -t 0 'fish' 'C-m'
 byobu-tmux send-keys -t 0 'cd ~/.bin' 'C-m'
 byobu-tmux send-keys -t 0 'clear' 'C-m'
 byobu-tmux send-keys -t 0 'll' 'C-m'

# Et une autre :

 byobu-tmux new-window
 byobu-tmux rename-window 'Un'
 byobu split-window -v
 byobu-tmux send-keys -t 1 'sudo su' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 1 'cd && clear' 'C-m'
 sleep 0
 byobu-tmux send-keys -t 1 'neo' 'C-m'
 byobu-tmux send-keys -t 0 'clear' 'C-m'
 byobu-tmux send-keys -t 0 'meteo' 'C-m'

 # Create another window

 byobu-tmux new-window
 byobu-tmux rename-window 'Deux'
 byobu split-window -v
 byobu-tmux send-keys -t 1 'ping -c1 serveur && ssh serveur || ping -c1 portable && ssh portable || ping -c1 chambre && ssh chambre || ssh -X aureo@localhost' 'C-m'
 byobu-tmux send-keys -t 1 'sleep 1' 'C-m'
 byobu-tmux send-keys -t 1 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'figlet $(hostname) | lolcat' 'C-m'
 byobu-tmux send-keys -t 0 'ping -c1 syno && ssh syno' 'C-m'
 byobu-tmux send-keys -t 0 'clear' 'C-m'

# Yet another window

 byobu-tmux new-window
 byobu-tmux rename-window 'Trois'
 byobu split-window -v
 byobu-tmux send-keys -t 1 'clear' 'C-m'
 byobu-tmux send-keys -t 1 '[ -d /home/guillaume/safe-in-cloud/yoga ] || safe' 'C-m'
 byobu-tmux send-keys -t 0 'calcurse' 'C-m'

# And a last one

 byobu-tmux new-window
 byobu-tmux rename-window 'Quatre'
 byobu split-window -v
 byobu-tmux send-keys -t 1 'cd ~/Téléchargements' 'C-m'
 byobu-tmux send-keys -t 1 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'find . -ctime -3 | lolcat' 'C-m'
 byobu-tmux send-keys -t 1 'find . -iname "*'
 byobu-tmux send-keys -t 0 'cd ~/Vidéos' 'C-m'
 byobu-tmux send-keys -t 0 'clear' 'C-m'
 byobu-tmux send-keys -t 0 'find . -iname "*.*" -ctime -3 | lolcat' 'C-m'
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

# THERE is the last one ;-)

 byobu-tmux new-window
 byobu-tmux rename-window 'Six'
 byobu-tmux send-keys 'bofh' 'C-m'

 # It's OK. If that session isn't already running, fire it :

fi
# Enter Byobu
 byobu-tmux attach -t $USER
