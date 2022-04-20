#!/bin/bash

# Avant tout, réveiller le NAS Synology s'il est passé 11 heures :
# zobi=$(date +%H)
#  [[ $zobi -gt 11 ]] && wakeonlan 00:11:32:31:0A:54

# Puis on construit la session Byobu :

if [ -z "$(byobu list-sessions | grep $USER)" ]
 then
 cd ~
 byobu-tmux new-session -d -s $USER # Crée une nouvelle session détachée
 byobu-tmux rename-window -t $USER:0 'Load' # Byobu se lance avec une seule fenêtre, on va la renommer.
 byobu split-window -v
 # byobu-tmux send-keys -t 0 'bashtop' 'C-m'
 byobu-tmux send-keys -t 0 'gotop' 'C-m'
 byobu-tmux send-keys -t 1 'glances' 'C-m'

# Une autre :

 byobu-tmux new-window
 byobu-tmux rename-window 'NMON'
 byobu-tmux send-keys 'nmon' 'C-m'
sleep 1
 byobu-tmux send-keys 'n'
 byobu-tmux send-keys 'm'
 byobu-tmux send-keys 'r'
 byobu-tmux send-keys 'U'
 byobu-tmux send-keys 'j'

 # Encore une :

 byobu-tmux new-window
 byobu-tmux rename-window 'LOGS'
 byobu split-window -v
 byobu split-window -v
 byobu-tmux send-keys -t 1 'whowatch' 'C-m'
 byobu-tmux send-keys -t 2 'lnav /var/log/ /var/log/*/' 'C-m'
#  byobu-tmux send-keys -t 2 'C-m'
 byobu-tmux send-keys -t 0 'sudo su -' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 0 'nethogs -a enp5s0' 'C-m'

# Tiens, une autre :

 byobu-tmux new-window
 byobu split-window -v
 byobu-tmux send-keys -t 0 'ranger' 'C-m'
 byobu-tmux send-keys -t 1 'br' 'C-m'

 # Une nouvelle fenêtre pour vim avec son explorateur ...

 byobu-tmux new-window
 byobu-tmux rename-window 'VIM'
 byobu-tmux send-keys 'vim' 'C-m'

# On crée une autre fenêtre ( Un shell zsh, un autre en fish )...

 byobu-tmux new-window
 byobu-tmux rename-window 'Shells'
 byobu split-window -v
 byobu-tmux send-keys -t 1 'bash' 'C-m'
 byobu-tmux send-keys -t 1 'cd .bin' 'C-m'
 byobu-tmux send-keys -t 1 'clear' 'C-m'
 byobu-tmux send-keys -t 0 'fish' 'C-m'
 byobu-tmux send-keys -t 0 'cd ~/.bin' 'C-m'
 byobu-tmux send-keys -t 0 'clear' 'C-m'
 byobu-tmux send-keys -t 0 'ls' 'C-m'
 byobu-tmux send-keys -t 0 'du -m .|tail -n 1' 'C-m'

 # Create another window

 byobu-tmux new-window
 byobu-tmux rename-window 'Deux'
 byobu split-window -v
# byobu-tmux send-keys -t 0 'ping -c1 serveur && ssh serveur || ping -c1 portable && ssh portable || ping -c1 chambre && ssh chambre || ssh -X aureo@localhost' 'C-m'
 byobu-tmux send-keys -t 0 'sudo su -' 'C-m'
 byobu-tmux send-keys -t 0 'sleep 1' 'C-m'
 byobu-tmux send-keys -t 0 'su - aureo' 'C-m'
 byobu-tmux send-keys -t 0 'sleep 1' 'C-m'
 byobu-tmux send-keys -t 0 'clear' 'C-m'
 byobu-tmux send-keys -t 0 'figlet $(hostname) | lolcat' 'C-m'
 byobu-tmux send-keys -t 1 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'espanso restart' 'C-m'
 byobu-tmux send-keys -t 1 '[ -d /home/guillaume/safe-in-cloud/yoga ] || safe' 'C-m'

 byobu-tmux new-window
 byobu-tmux rename-window 'Quatre'
 byobu split-window -v
 byobu-tmux send-keys -t 0 'cd ~/Téléchargements' 'C-m'
 byobu-tmux send-keys -t 0 'clear' 'C-m'
 byobu-tmux send-keys -t 0 'mv -vf *.deb DEB/' 'C-m'
 byobu-tmux send-keys -t 0 'mv -vf *.jpg IMG/' 'C-m'
 byobu-tmux send-keys -t 0 'mv -vf *.jpeg IMG/' 'C-m'
 byobu-tmux send-keys -t 0 'mv -vf *.gif IMG/' 'C-m'
 byobu-tmux send-keys -t 0 'mv -vf *.png IMG/' 'C-m'
 byobu-tmux send-keys -t 0 'mv -vf *.iso ISO/' 'C-m'
 byobu-tmux send-keys -t 0 'mv -vf *.pdf PDF/' 'C-m'
 byobu-tmux send-keys -t 0 'mv -vf *.zip *.tgz *.tar.gz ZIP/' 'C-m'
 byobu-tmux send-keys -t 0 'mv -vf *.tgz ZIP/' 'C-m'
 byobu-tmux send-keys -t 0 'mv -vf *.tar.gz ZIP/' 'C-m'
 byobu-tmux send-keys -t 0 'find . \( -iname "*.mkv" -o -iname "*.avi"  -o -iname "*.mp4" \) -print -exec mv {} ~/Vidéos/Temp/ \\;' 'C-m'
 byobu-tmux send-keys -t 0 'find . -ctime -31 | sort | lolcat' 'C-m'
 byobu-tmux send-keys -t 0 'find . -iname "*'
 byobu-tmux send-keys -t 1 'cd ~/Vidéos' 'C-m'
 byobu-tmux send-keys -t 1 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'find Temp/ -iname "*.*" -ctime -31 | sort | lolcat' 'C-m'
 byobu-tmux send-keys -t 1 'mpv ²'

 byobu-tmux new-window
 byobu-tmux rename-window 'Cinq'
 byobu split-window -v
 byobu split-window -v
 byobu split-window -v
 byobu-tmux send-keys -t 1 'cd ~/Musique' 'C-m'
 byobu-tmux send-keys -t 1 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'joue' 'C-m'
 byobu-tmux send-keys -t 0 'cd ~/Musique' 'C-m'
 byobu-tmux send-keys -t 0 'clear' 'C-m'
 byobu-tmux send-keys -t 0 'grosse'
 byobu-tmux send-keys -t 2 'TERM=rxvt-unicode-256color' 'C-m'
 byobu-tmux send-keys -t 2 'cava' 'C-m'
 byobu-tmux send-keys -t 3 'pulsemixer' 'C-m'

 byobu-tmux new-window
 byobu-tmux rename-window 'Six'
 byobu-tmux send-keys 'su - testeur' 'C-m'

 byobu-tmux new-window
 byobu-tmux rename-window 'Sept'
 byobu split-window -h
 byobu-tmux send-keys -t 0 'bat ~/.zshrc --theme Dracula --line-range 259:' 'C-m'
 byobu-tmux send-keys -t 1 'bat ~/.config/espanso/default.yml --line-range 198:' 'C-m'

 byobu-tmux new-window
 byobu-tmux rename-window 'huit'
 byobu-tmux send-keys 'bofh' 'C-m'
# byobu-tmux send-keys 'blackr' 'C-m'

 # It's OK. If that session isn't already running, fire it :

fi
# Enter Byobu
 byobu-tmux attach -t $USER
