#  Les alias :

alias back='cd $OLDPWD'
alias cd..='cd ..'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias home='cd ~/'
alias documents='cd ~/Documents'
alias downloads='cd ~/Downloads'
alias books='cd ~/eBooks'
alias images='cd ~/Images'
alias videos='cd ~/Videos'
alias web='cd /var/www/html'

alias cp='cp --interactive'
alias mv='mv --interactive'
alias rm='rm --interactive'

alias ls='ls --classify --tabsize=0 --literal --color=auto --show-control-chars --human-readable'
alias ll="ls -lv --group-directories-first"
alias lla='ls -la'
alias llo='ls -aol'
alias lli='ls -AlhGrti'
alias lsd="ls -alF | grep /$"
alias lx='ls -lXB'        	# Par extension
alias lk='ls -lSr'        	# Par taille
alias lsize='ls --sort=size -lhr' # Ou comme ça
alias la='ls -Al'        	# Montre les fichiers cachés
alias lr='ls -lR'        	# Récursif
alias lt='ls -ltr'        	# Trié par date
alias lm='ls -al |most'        # pipé dans 'most'
alias l='ls -hF --color'    # quick listing

alias ff='find / -type f -name $1'
alias fd='find / -type d -name $1'
alias ffi='sudo find / -iname $1'
# alias findn='find . -iname '"${1}"''

alias colle="ls /tmp/copie* | sed 's|[^\.]*.\.||' | xargs -I % mv /tmp/copie.% ./%"

alias tree='tree -Cs'       
alias less='less --quiet'
alias df='df --human-readable'
alias du='du -h --max-depth=1'
alias psgrep='ps aux |grep -v grep |grep -i'
alias count='du -a | cut -d/ -f2 | sort | uniq -c | sort -nr'
alias tu='top -o cpu' #cpu
alias tm='top -o vsize' #memory
alias biggest='BLOCKSIZE=1048576; du -chx | sort -rh'
alias tf='tail -f '
alias dn='OPTIONS=$(\ls -F | grep /$); select s in $OPTIONS; do cd $PWD/$s; break;done'
alias path='echo -e ${PATH//:/\\n}'
alias xs="cd"
alias vf="cd"
alias mpv="mpv --no-audio-display"
alias couleurs="grep  '# Color' ~/.bashrc"
alias nabo='nano'
alias rot13="tr '[A-Za-z]' '[N-ZA-Mn-za-m]'"
alias wesh="espeak -s 1 -p 0.0001 'wesh'; clear"
alias kikoo="fortune | cowsay -f $(ls /usr/share/cowsay/cows/ | shuf -n 1) | lolcat"
alias tux='xpenguins -n 50 --all'
alias lune="curl wttr.in/Moon"
alias meteo='curl http://wttr.in/Lille'
alias rouletterusse='[ $[ $RANDOM % 6 ] == 0 ] && echo "T es mort !" || echo "Tu vis."'
alias joue='cd ~/Musique/ ; mpv $(/home/guillaume/.fzf/bin/fzf); cd - '
alias reload='source ~/.bashrc'
alias confctrl='grep "^[^#]" $1'
alias nocomm='grep -v '^$\|^\s*\#' $1'
alias nslookup='nslookup -sil'
alias LOG="tail -f /var/log/*log /var/log/*/*log"
alias LOGS="find /var/log -type f -exec file {} \; | grep 'text' | cut -d' ' -f1 | sed -e's/:$//g' | grep -v '[0-9]$' | xargs tail -f"
alias dmesg='dmesg -wx'
alias dff='df -h -x tmpfs -x usbfs'
alias psg='ps -ef | grep $1'
alias fastping='ping -c 100 -s.2'
alias ports='netstat -laputn'
alias updb='sudo updatedb &'
alias swapflush="echo swapoff && sudo swapoff -a && echo swapon && sudo swapon -a && echo done"
alias burn='pkill -9'
alias px='ps aux | grep '
alias ct='column -t'
alias dfc='df -hPT | column -t' 
alias untar='tar -zxvf'
alias ipext='curl ipinfo.io/ip'
alias ipin='hostname -I'
alias myip="ip -br -c a"
alias which='type -all'
alias debug="set -o nounset; set -o xtrace"
alias ssytemctl='systemctl'
alias sstatus="sudo systemctl status -l"
alias srestart="sudo systemctl restart"
alias mem="free -h"
alias cdtmp="cd $(mktemp -d)"
alias top-commands='history | awk "{print $2}" | awk "BEGIN {FS="|"} {print $1}" |sort|uniq -c | sort -rn | head -10'
alias neo='su -c cmatrix guillaume'
alias cputemp='sensors | grep Core'
alias chx='chmod 755'
alias chr='chmod 644'
alias ipinfo='curl ipinfo.io'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias cmderror='/usr/local/bin/cmderror'
alias showconn="lsof -Pan -i tcp -i udp"
alias mdpdf=" ~/.pandoc/md2pdf"
alias script='script ma_session-$(date +%d-%m-%Y-%T).txt'
# alias less="bat"
# alias more="bat"
# alias most="bat"
alias pping="prettyping"
alias fic="find /var/www/html/formation/ -type f -exec chmod 644 {} \; && find /var/www/html/formation/ -type d -exec chmod 755 {} \;"  
alias nwho='ping -b -c 2 255.255.255.255 2>&1 | grep "bytes from" | cut -d " " -f 4 | sort | uniq | sed -e "s/://g"'
alias diskspace="du -S | sort -n -r |less"
alias folders="find . -maxdepth 1 -type d -print | xargs du -sk | sort -rn"
alias apti='sudo apt-get install'
alias apts="sudo apt-cache search"
alias aptr='sudo apt-get remove' 
alias orphand='sudo deborphan | xargs sudo apt-get -y remove --purge'
alias aptclean='sudo apt-get autoclean && sudo apt-get autoremove && sudo apt-get clean && sudo apt-get remove && orphand' 
alias maj="sudo apt-get update && sudo apt-get upgrade --only-upgrade -y | tee /var/log/divers/packages-update-$(date +%F).log; sudo apt-get -f install; sudo apt autoclean; sudo apt autoremove"

alias dodo='sudo /sbin/poweroff'
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/poweroff'
alias shutdown='sudo /sbin/shutdown'

alias stamp='date "+%A_%d/%m/%Y_%Hh%M"'
alias d='date +%F'
alias now='date +"%T"'

# alias backup='rsync -r -t -p -o -g -x -v --progress --delete -c -H -i -s /home/nickyeoman/saveme /media/nickyeoman/portabledrive'

alias {G,g}{re,er}p='grep'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'

alias please='sudo $(history -p \!\!)'
alias sduo='sudo'
alias suod='sudo'
alias svi='sudo nvim'
alias us="su"

alias vi='nvim'
alias edit='nvim'
alias emacs='nvim'

alias iptl='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias iptlnat='sudo /sbin/iptables -t nat -n -v --line-numbers'

alias gitar="git ls-files -d -m -o -z --exclude-standard | xargs -0 git update-index --add --remove"
alias gpd='git push origin develop'
alias gpm='git push origin master'
alias gst='git status'
alias gcom='git commit -m --all'
alias gclo='git clone'
alias glog='git log'
alias gadd='git add . --verbose'
alias gco='git checkout'
alias gls='git ls-files'
alias gpall='git push --all'

alias msr='mysql -u root -p'

alias restartapache='sudo systemctl restart apache2 && sudo systemctl status -l apache2'
alias apachedit='sudo vim /etc/apache2/apache2.conf'
alias apachegrace='sudo apachectl graceful'
alias apachelog="less +F /var/log/apache2/*.log"

alias accio=ansibleSetup
alias ans='ansible'
alias ansp='ansible-playbook'

# alias dockip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"
# alias dockd="docker run -d -P"			# Daemonized container
# alias docki="docker run -t -i -P"       	# Insteractive container
# alias dockmenage="docker container rm $(docker container ps -a -q)"
# alias dockercleancontainers="docker ps -aq | xargs docker rm"
# alias dockercleanimages="docker images -aq -f dangling=true | xargs docker rmi"
# alias dockerclean="dockercleancontainers && dockercleanimages"
# alias docker-killall="docker ps -q | xargs docker kill"
# alias dl='docker ps -l -q'
# alias drm="docker rm"
# alias dps="docker ps -a"
# alias dockimg="docker images | uniq -f 3"
# alias dockps="docker ps -a | less -S"
# alias dockip="docker inspect --format '{{ .NetworkSettings.IPAddress }}' $1"
# alias docklog="docker logs -f -t $1"
# alias dockstat="docker stats $1"
# alias dockrmimg="docker images -aq -f dangling=true | xargs docker rmi"
# alias dockkillall="docker ps -q | xargs docker kill"

alias lxcls="lxc-ls --fancy"
alias lxcat="lxc-attach -n $@"
alias lxcstop="lxc-stop -n $@"
alias lxcstart="lxc-start -n $@"
alias box='box=$(yad --title=Voyager --window-icon="/usr/share/xfce4/voyager/p1.png" --image="/usr/share/xfce4/voyager/Voyager0.png" --image-on-top --separator="" --width=300 --height=260 --list --radiolist --no-headers --column="1" --column="option" --print-column 2 true "Voyager Wall" false "Conky Control" false "Plank Control" false "Colors Icons" false "Reparation" false "System Infos")'

alias f='. fzf-fs'
alias byz='tmux list-windows -F "#I:#W" | fzf-tmux | cut -d ":" -f 1 | xargs tmux select-window -t'








alias ls='ls --classify --tabsize=0 --literal --color=auto --show-control-chars --human-readable'
alias ll="ls -lv --group-directories-first"
alias lla='ls -la'
alias llo='ls -aol'
alias lli='ls -AlhGrti'
alias lsd="ls -alF | grep /$"
alias lx='ls -lXB'        	# Par extension
alias lk='ls -lSr'        	# Par taille
alias lsize='ls --sort=size -lhr' # Ou comme ça
alias la='ls -Al'        	# Montre les fichiers cachés
alias lr='ls -lR'        	# Récursif
alias lt='ls -ltr'        	# Trié par date
alias lm='ls -al |most'        # pipé dans 'most'
alias l='ls -hF --color'    # quick listing
alias tree='tree -Cs'
alias less='less --quiet'
alias df='df --human-readable'
alias du='du -h --max-depth=1'
alias psgrep='ps aux |grep -v grep |grep -i'
alias count='du -a | cut -d/ -f2 | sort | uniq -c | sort -nr'
# alias findn='find . -iname '"${1}"''
alias tu='top -o cpu' #cpu
alias tm='top -o vsize' #memory
alias biggest='BLOCKSIZE=1048576; du -chx | sort -rh'
alias tf='tail -f '
alias dn='OPTIONS=$(\ls -F | grep /$); select s in $OPTIONS; do cd $PWD/$s; break;done'
alias path='echo -e ${PATH//:/\\n}'
alias xs="cd"
alias vf="cd"
alias see="bat"
alias mpv="mpv --no-audio-display"
alias couleurs="grep  '# Color' ~/.bashrc"
alias nabo='nano'
alias rot13="tr '[A-Za-z]' '[N-ZA-Mn-za-m]'"
alias wesh="espeak -s 1 -p 0.0001 'wesh'; clear"
alias kikoo="fortune bofh-excuses | cowsay -f $(ls /usr/share/cowsay/cows/ | shuf -n 1) | lolcat"
alias tux='xpenguins -n 50 --all'
alias meteo='curl http://wttr.in/Wasquehal'
alias rouletterusse='[ $[ $RANDOM % 6 ] == 0 ] && echo "T es mort !" || echo "Tu vis."'
alias joue='cd /media/guillaume/ssdusb/Musique/ ; mpv $(/home/guillaume/.fzf/bin/fzf); cd - '
alias sl='sl -ae'
alias reload='source ~/.bashrc'
alias confctrl='grep "^[^#]" $1'
alias nocomm='grep -v '^$\|^\s*\#' $1'
alias nslookup='nslookup -sil'
alias LOG="tail -f /var/log/*log /var/log/*/*log"
alias LOGS="find /var/log -type f -exec file {} \; | grep 'text' | cut -d' ' -f1 | sed -e's/:$//g' | grep -v '[0-9]$' | xargs tail -f"
alias dmesg='dmesg -wx'
alias dff='df -h -x tmpfs -x usbfs'
alias psg='ps -ef | grep $1'
alias fastping='ping -c 100 -s.2'
alias ports='netstat -laputn'
alias updb='sudo updatedb &'
alias swapflush="echo swapoff && sudo swapoff -a && echo swapon && sudo swapon -a && echo done"
alias burn='pkill -9'
alias px='ps aux | grep '
alias ct='column -t'
alias dfc='df -hPT | column -t'
alias untar='tar -zxvf'
alias ipext='curl ipinfo.io/ip'
alias ipin='hostname -I'
alias myip="ip -br -c a"
alias which='type -all'
alias debug="set -o nounset; set -o xtrace"
alias ssytemctl='systemctl'
alias sstatus="sudo systemctl status -l"
alias srestart="sudo systemctl restart"
alias mem="free -h"
alias cdtmp="cd $(mktemp -d)"
alias top-commands='history | awk "{print $2}" | awk "BEGIN {FS="|"} {print $1}" |sort|uniq -c | sort -rn | head -10'
alias neo='su -c cmatrix guillaume'
alias cputemp='sensors | grep Core'
alias chx='chmod 755'
alias chr='chmod 644'
alias ipinfo='curl ipinfo.io'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias cmderror='/usr/local/bin/cmderror'
alias showconn="lsof -Pan -i tcp -i udp"
alias mdpdf=" ~/.pandoc/md2pdf"
alias script='script ~/.archives/script_sessions/session-$(date +%d-%m-%Y__%Hh-%Mm-%Ss).txt'
alias pping="prettyping"
alias fic="find /var/www/html/formation/ -type f -exec chmod 644 {} \; && find /var/www/html/formation/ -type d -exec chmod 755 {} \;"
alias nwho='ping -b -c 2 255.255.255.255 2>&1 | grep "bytes from" | cut -d " " -f 4 | sort | uniq | sed -e "s/://g"'
alias diskspace="du -S | sort -n -r |more"
alias folders="find . -maxdepth 1 -type d -print | xargs du -sk | sort -rn"
alias br="br --sizes -dp"
alias apti='sudo apt-get install'
alias apts="sudo apt-cache search"
alias aptr='sudo apt-get remove'
alias orphand='sudo deborphan | xargs sudo apt-get -y remove --purge'
alias aptclean='sudo apt-get autoclean && sudo apt-get autoremove && sudo apt-get clean && sudo apt-get remove && orphand'
alias maj="sudo apt-get update && sudo apt-get upgrade --only-upgrade -y | tee /var/log/divers/packages-update-$(date +%F).log; sudo apt-get -f install; sudo apt autoclean; sudo apt autoremove"
alias dodo='sudo /sbin/poweroff'
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/poweroff'
alias shutdown='sudo /sbin/shutdown'
alias stamp='date "+%A_%d/%m/%Y_%Hh%M"'
alias d='date +%F'
alias now='date +"%T"'
alias safe-in-cloud='encfs "/home/guillaume/Cloud/MEGAsync/Cloud Drive/Safe/" /home/guillaume/safe-in-cloud/ && df -h | grep -i cloud'
alias safe-on-usb='encfs /media/$USER/USBPRO/Coffre-fort ~/safe-on-usb && df -h | grep safe-on'
alias hop='bash ~/.shells/scripts/byobu-session-GdY.sh'
alias poe='bash ~/.scripts/byobu-poe.sh'
alias ck="/usr/bin/i3lock -n -c 000000 2>/dev/null"
# alias wola="wakeonlan `cat /etc/WoL/macadd-all.txt` && order4-sucmd reboot"
# alias wol1="wakeonlan `cat /etc/WoL/macadd-formation1.txt`"
# alias wol2="wakeonlan `cat /etc/WoL/macadd-formation2.txt`"
# alias wol3="wakeonlan `cat /etc/WoL/macadd-formation3.txt`"
# alias wol4="wakeonlan `cat /etc/WoL/macadd-formation4.txt`"
# alias wol5="wakeonlan `cat /etc/WoL/macadd-formation5.txt`"
# alias wol6="wakeonlan `cat /etc/WoL/macadd-formation6.txt`"
# alias wol7="wakeonlan `cat /etc/WoL/macadd-formation7.txt`"
# alias wol8="wakeonlan `cat /etc/WoL/macadd-formation8.txt`"
# alias wol9="wakeonlan `cat /etc/WoL/macadd-formation9.txt`"
# alias wol10="wakeonlan `cat /etc/WoL/macadd-formation10.txt`"
alias remote1='xtightvncviewer -via "formateur@formation1" localhost:0'
alias remote2='xtightvncviewer -via "formateur@formation2" localhost:0'
alias remote3='xtightvncviewer -via "formateur@formation3" localhost:0'
alias remote4='xtightvncviewer -via "formateur@formation4" localhost:0'
alias remote5='xtightvncviewer -via "formateur@formation5" localhost:0'
alias remote6='xtightvncviewer -via "formateur@formation6" localhost:0'
alias remote7='xtightvncviewer -via "formateur@formation7" localhost:0'
alias remote8='xtightvncviewer -via "formateur@formation8" localhost:0'
alias remote9='xtightvncviewer -via "formateur@formation9" localhost:0'
alias remote10='xtightvncviewer -via "formateur@formation10" localhost:0'
alias sss="ssh formateur@serveur"
alias sse="ssh formateur@serveuse"
alias ss1="ssh formateur@formation1"
alias ss2="ssh formateur@formation2"
alias ss3="ssh formateur@formation3"
alias ss4="ssh formateur@formation4"
alias ss5="ssh formateur@formation5"
alias ss6="ssh formateur@formation6"
alias ss7="ssh formateur@formation7"
alias ss8="ssh formateur@formation8"
alias ss9="ssh formateur@formation9"
alias ss10="ssh formateur@formation10"
alias ssv="ssh formateur@192.168.20.82"
alias ssv2="ssh formateur@192.168.20.83"
alias vm7='ssh formation@serveur -p 2200$(echo $HOSTNAME | tail -c2)'
# alias backup='rsync -r -t -p -o -g -x -v --progress --delete -c -H -i -s /home/nickyeoman/saveme /media/nickyeoman/portabledrive'
alias {G,g}{re,er}p='grep'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias please='sudo $(history -p \!\!)'
alias sduo='sudo'
alias suod='sudo'
alias svi='sudo nvim'
alias us="su"
alias vi='nvim'
alias edit='nvim'
alias emacs='nvim'
alias iptl='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias iptlnat='sudo /sbin/iptables -t nat -n -v --line-numbers'
# alias usbb='rsync -avz /media/usbdisk/ ~/backup/usb/'
alias yolo='(git add . && git commit -a -m "Commit du $(date "+%A %d %B %Y") à $(date "+%H heures %M") ." ; git push origin master)'
alias gitar="git ls-files -d -m -o -z --exclude-standard | xargs -0 git update-index --add --remove"
alias g='git'
alias gpd='git push origin develop'
alias gpm='git push origin master'
alias gst='git status'
alias gcom='git commit -m --all'
alias gclo='git clone'
alias glog='git log'
alias gadd='git add . --verbose'
alias gco='git checkout'
alias gls='git ls-files'
alias gpall='git push --all'
alias msr='mysql -u root -p'
alias restartapache='sudo systemctl restart apache2 && sudo systemctl status -l apache2'
alias apachedit='sudo vim /etc/apache2/apache2.conf'
alias apachegrace='sudo apachectl graceful'
alias apachelog="less +F /var/log/apache2/*.log"
alias accio=ansibleSetup
alias ans='ansible'
alias ansp='ansible-playbook'
# alias dockip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"
# alias dockd="docker run -d -P"			# Daemonized container
# alias docki="docker run -t -i -P"       	# Insteractive container
# alias dockmenage="docker container rm $(docker container ps -a -q)"
# alias dockercleancontainers="docker ps -aq | xargs docker rm"
# alias dockercleanimages="docker images -aq -f dangling=true | xargs docker rmi"
# alias dockerclean="dockercleancontainers && dockercleanimages"
# alias docker-killall="docker ps -q | xargs docker kill"
# alias dl='docker ps -l -q'
# alias drm="docker rm"
# alias dps="docker ps -a"
# alias dockimg="docker images | uniq -f 3"
# alias dockps="docker ps -a | less -S"
# alias dockip="docker inspect --format '{{ .NetworkSettings.IPAddress }}' $1"
# alias docklog="docker logs -f -t $1"
# alias dockstat="docker stats $1"
# alias dockrmimg="docker images -aq -f dangling=true | xargs docker rmi"
# alias dockkillall="docker ps -q | xargs docker kill"
alias lxcls="lxc-ls --fancy"
alias lxcat="lxc-attach -n $@"
alias lxcstop="lxc-stop -n $@"
alias lxcstart="lxc-start -n $@"
alias box='box=$(yad --title=Voyager --window-icon="/usr/share/xfce4/voyager/p1.png" --image="/usr/share/xfce4/voyager/Voyager0.png" --image-on-top --separator="" --width=300 --height=260 --list --radiolist --no-headers --column="1" --column="option" --print-column 2 true "Voyager Wall" false "Conky Control" false "Plank Control" false "Colors Icons" false "Reparation" false "System Infos")'
alias f='. fzf-fs'
alias byz='tmux list-windows -F "#I:#W" | fzf-tmux | cut -d ":" -f 1 | xargs tmux select-window -t'
alias tue="sudo /home/guillaume/.shells/bin/fk"
alias accio=ansibleSetup
alias accio=ansibleSetup
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias ans='ansible'
alias ans='ansible'
alias ansp='ansible-playbook'
alias ansp='ansible-playbook'
alias apachedit='sudo vim /etc/apache2/apache2.conf'
alias apachedit='sudo vim /etc/apache2/apache2.conf'
alias apachegrace='sudo apachectl graceful'
alias apachegrace='sudo apachectl graceful'
alias apachelog="less +F /var/log/apache2/*.log"
alias apachelog="less +F /var/log/apache2/*.log"
alias aptclean='sudo apt-get autoclean && sudo apt-get autoremove && sudo apt-get clean && sudo apt-get remove && orphand'
alias aptclean='sudo apt-get autoclean && sudo apt-get autoremove && sudo apt-get clean && sudo apt-get remove && orphand' 
alias apti='sudo apt-get install'
alias apti='sudo apt-get install'
alias aptr='sudo apt-get remove'
alias aptr='sudo apt-get remove' 
alias apts="sudo apt-cache search"
alias apts="sudo apt-cache search"
alias back='cd $OLDPWD'
alias back='cd $OLDPWD'
# alias backup='rsync -r -t -p -o -g -x -v --progress --delete -c -H -i -s /home/nickyeoman/saveme /media/nickyeoman/portabledrive'
# alias backup='rsync -r -t -p -o -g -x -v --progress --delete -c -H -i -s /home/nickyeoman/saveme /media/nickyeoman/portabledrive'
alias biggest='BLOCKSIZE=1048576; du -chx | sort -rh'
alias biggest='BLOCKSIZE=1048576; du -chx | sort -rh'
alias books='cd ~/eBooks'
alias books='cd ~/eBooks'
alias box='box=$(yad --title=Voyager --window-icon="/usr/share/xfce4/voyager/p1.png" --image="/usr/share/xfce4/voyager/Voyager0.png" --image-on-top --separator="" --width=300 --height=260 --list --radiolist --no-headers --column="1" --column="option" --print-column 2 true "Voyager Wall" false "Conky Control" false "Plank Control" false "Colors Icons" false "Reparation" false "System Infos")'
alias box='box=$(yad --title=Voyager --window-icon="/usr/share/xfce4/voyager/p1.png" --image="/usr/share/xfce4/voyager/Voyager0.png" --image-on-top --separator="" --width=300 --height=260 --list --radiolist --no-headers --column="1" --column="option" --print-column 2 true "Voyager Wall" false "Conky Control" false "Plank Control" false "Colors Icons" false "Reparation" false "System Infos")'
alias br="br --sizes -dp"
alias burn='pkill -9'
alias burn='pkill -9'
alias byz='tmux list-windows -F "#I:#W" | fzf-tmux | cut -d ":" -f 1 | xargs tmux select-window -t'
alias byz='tmux list-windows -F "#I:#W" | fzf-tmux | cut -d ":" -f 1 | xargs tmux select-window -t'
alias ..="cd .."
alias ..="cd .."
alias ...="cd ../.."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias ......="cd ../../../../.."
alias cd..='cd ..'
alias cd..='cd ..'
alias cdtmp="cd $(mktemp -d)"
alias cdtmp="cd $(mktemp -d)"
alias chr='chmod 644'
alias chr='chmod 644'
alias chx='chmod 755'
alias chx='chmod 755'
alias ck="/usr/bin/i3lock -n -c 000000 2>/dev/null"
alias cmderror='/usr/local/bin/cmderror'
alias cmderror='/usr/local/bin/cmderror'
alias colle="ls /tmp/copie* | sed 's|[^\.]*.\.||' | xargs -I % mv /tmp/copie.% ./%"
alias colle="ls /tmp/copie* | sed 's|[^\.]*.\.||' | xargs -I % mv /tmp/copie.% ./%"
alias confctrl='grep "^[^#]" $1'
alias confctrl='grep "^[^#]" $1'
alias couleurs="grep  '# Color' ~/.bashrc"
alias couleurs="grep  '# Color' ~/.bashrc"
alias count='du -a | cut -d/ -f2 | sort | uniq -c | sort -nr'
alias count='du -a | cut -d/ -f2 | sort | uniq -c | sort -nr'
alias cp='cp --interactive'
alias cp='cp --interactive'
alias cputemp='sensors | grep Core'
alias cputemp='sensors | grep Core'
alias ct='column -t'
alias ct='column -t'
alias d='date +%F'
alias d='date +%F'
alias debug="set -o nounset; set -o xtrace"
alias debug="set -o nounset; set -o xtrace"
alias dfc='df -hPT | column -t'
alias dfc='df -hPT | column -t' 
alias df='df --human-readable'
alias df='df --human-readable'
alias dff='df -h -x tmpfs -x usbfs'
alias dff='df -h -x tmpfs -x usbfs'
alias diskspace="du -S | sort -n -r |more"
alias diskspace="du -S | sort -n -r |more"
# alias dl='docker ps -l -q'
# alias dl='docker ps -l -q'
alias dmesg='dmesg -wx'
alias dmesg='dmesg -wx'
alias dn='OPTIONS=$(\ls -F | grep /$); select s in $OPTIONS; do cd $PWD/$s; break;done'
alias dn='OPTIONS=$(\ls -F | grep /$); select s in $OPTIONS; do cd $PWD/$s; break;done'
# alias dockd="docker run -d -P"			# Daemonized container
# alias dockd="docker run -d -P"			# Daemonized container
# alias dockercleancontainers="docker ps -aq | xargs docker rm"
# alias dockercleancontainers="docker ps -aq | xargs docker rm"
# alias dockerclean="dockercleancontainers && dockercleanimages"
# alias dockerclean="dockercleancontainers && dockercleanimages"
# alias dockercleanimages="docker images -aq -f dangling=true | xargs docker rmi"
# alias dockercleanimages="docker images -aq -f dangling=true | xargs docker rmi"
# alias docker-killall="docker ps -q | xargs docker kill"
# alias docker-killall="docker ps -q | xargs docker kill"
# alias docki="docker run -t -i -P"       	# Insteractive container
# alias docki="docker run -t -i -P"       	# Insteractive container
# alias dockimg="docker images | uniq -f 3"
# alias dockimg="docker images | uniq -f 3"
# alias dockip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"
# alias dockip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"
# alias dockip="docker inspect --format '{{ .NetworkSettings.IPAddress }}' $1"
# alias dockip="docker inspect --format '{{ .NetworkSettings.IPAddress }}' $1"
# alias dockkillall="docker ps -q | xargs docker kill"
# alias dockkillall="docker ps -q | xargs docker kill"
# alias docklog="docker logs -f -t $1"
# alias docklog="docker logs -f -t $1"
# alias dockmenage="docker container rm $(docker container ps -a -q)"
# alias dockmenage="docker container rm $(docker container ps -a -q)"
# alias dockps="docker ps -a | less -S"
# alias dockps="docker ps -a | less -S"
# alias dockrmimg="docker images -aq -f dangling=true | xargs docker rmi"
# alias dockrmimg="docker images -aq -f dangling=true | xargs docker rmi"
# alias dockstat="docker stats $1"
# alias dockstat="docker stats $1"
alias documents='cd ~/Documents'
alias documents='cd ~/Documents'
alias dodo='sudo /sbin/poweroff'
alias dodo='sudo /sbin/poweroff'
alias downloads='cd ~/Downloads'
alias downloads='cd ~/Downloads'
# alias dps="docker ps -a"
# alias dps="docker ps -a"
# alias drm="docker rm"
# alias drm="docker rm"
alias du='du -h --max-depth=1'
alias du='du -h --max-depth=1'
alias edit='nvim'
alias edit='nvim'
alias egrep='egrep --color=auto'
alias egrep='egrep --color=auto'
alias emacs='nvim'
alias emacs='nvim'
alias fastping='ping -c 100 -s.2'
alias fastping='ping -c 100 -s.2'
alias fd='find / -type d -name $1'
alias fd='find / -type d -name $1'
alias ff='find / -type f -name $1'
alias ff='find / -type f -name $1'
alias ffi='sudo find / -iname $1'
alias ffi='sudo find / -iname $1'
alias f='. fzf-fs'
alias f='. fzf-fs'
alias fgrep='fgrep --color=auto'
alias fgrep='fgrep --color=auto'
alias fic="find /var/www/html/formation/ -type f -exec chmod 644 {} \; && find /var/www/html/formation/ -type d -exec chmod 755 {} \;"
alias fic="find /var/www/html/formation/ -type f -exec chmod 644 {} \; && find /var/www/html/formation/ -type d -exec chmod 755 {} \;"  
# alias findn='find . -iname '"${1}"''
# alias findn='find . -iname '"${1}"''
alias folders="find . -maxdepth 1 -type d -print | xargs du -sk | sort -rn"
alias folders="find . -maxdepth 1 -type d -print | xargs du -sk | sort -rn"
alias gadd='git add . --verbose'
alias gadd='git add . --verbose'
alias gclo='git clone'
alias gclo='git clone'
alias gco='git checkout'
alias gco='git checkout'
alias gcom='git commit -m --all'
alias gcom='git commit -m --all'
alias g='git'
alias g='git'
alias {G,g}{re,er}p='grep'
alias {G,g}{re,er}p='grep'
alias gitar="git ls-files -d -m -o -z --exclude-standard | xargs -0 git update-index --add --remove"
alias gitar="git ls-files -d -m -o -z --exclude-standard | xargs -0 git update-index --add --remove"
alias glog='git log'
alias glog='git log'
alias gls='git ls-files'
alias gls='git ls-files'
alias gpall='git push --all'
alias gpall='git push --all'
alias gpd='git push origin develop'
alias gpd='git push origin develop'
alias gpm='git push origin master'
alias gpm='git push origin master'
alias grep='grep --color=auto'
alias grep='grep --color=auto'
alias gst='git status'
alias gst='git status'
alias halt='sudo /sbin/poweroff'
alias halt='sudo /sbin/poweroff'
alias home='cd ~/'
alias home='cd ~/'
alias hop='bash ~/.scripts/byobu-opensession.sh'
alias hop='bash ~/.shells/scripts/byobu-session-GdY.sh'
alias images='cd ~/Images'
alias images='cd ~/Images'
alias ipext='curl ipinfo.io/ip'
alias ipext='curl ipinfo.io/ip'
alias ipinfo='curl ipinfo.io'
alias ipinfo='curl ipinfo.io'
alias ipin='hostname -I'
alias ipin='hostname -I'
alias iptlfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias iptlfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias iptlin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlnat='sudo /sbin/iptables -t nat -n -v --line-numbers'
alias iptlnat='sudo /sbin/iptables -t nat -n -v --line-numbers'
alias iptlout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptl='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptl='sudo /sbin/iptables -L -n -v --line-numbers'
alias joue='cd /media/guillaume/ssdusb/Musique/ ; mpv $(/home/guillaume/.fzf/bin/fzf); cd - '
alias joue='cd /media/guillaume/ssdusb/Musique/ ; mpv $(/home/guillaume/.fzf/bin/fzf); cd - '
alias kikoo="fortune bofh-excuses | cowsay -f $(ls /usr/share/cowsay/cows/ | shuf -n 1) | lolcat"
alias kikoo="fortune bofh-excuses | cowsay -f $(ls /usr/share/cowsay/cows/ | shuf -n 1) | lolcat"
alias la='ls -Al'        	# Montre les fichiers cachés
alias la='ls -Al'        	# Montre les fichiers cachés
# alias less="bat"
alias less='less --quiet'
alias less='less --quiet'
alias lk='ls -lSr'        	# Par taille
alias lk='ls -lSr'        	# Par taille
alias lla='ls -la'
alias lla='ls -la'
alias lli='ls -AlhGrti'
alias lli='ls -AlhGrti'
alias ll="ls -lv --group-directories-first"
alias ll="ls -lv --group-directories-first"
alias llo='ls -aol'
alias llo='ls -aol'
alias l='ls -hF --color'    # quick listing
alias l='ls -hF --color'    # quick listing
alias lm='ls -al |most'        # pipé dans 'most'
alias lm='ls -al |most'        # pipé dans 'most'
alias LOGS="find /var/log -type f -exec file {} \; | grep 'text' | cut -d' ' -f1 | sed -e's/:$//g' | grep -v '[0-9]$' | xargs tail -f"
alias LOGS="find /var/log -type f -exec file {} \; | grep 'text' | cut -d' ' -f1 | sed -e's/:$//g' | grep -v '[0-9]$' | xargs tail -f"
alias LOG="tail -f /var/log/*log /var/log/*/*log"
alias LOG="tail -f /var/log/*log /var/log/*/*log"
alias lr='ls -lR'        	# Récursif
alias lr='ls -lR'        	# Récursif
alias lsd="ls -alF | grep /$"
alias lsd="ls -alF | grep /$"
alias lsize='ls --sort=size -lhr' # Ou comme ça
alias lsize='ls --sort=size -lhr' # Ou comme ça
alias ls='ls --classify --tabsize=0 --literal --color=auto --show-control-chars --human-readable'
alias ls='ls --classify --tabsize=0 --literal --color=auto --show-control-chars --human-readable'
alias lt='ls -ltr'        	# Trié par date
alias lt='ls -ltr'        	# Trié par date
alias lxcat="lxc-attach -n $@"
alias lxcat="lxc-attach -n $@"
alias lxcls="lxc-ls --fancy"
alias lxcls="lxc-ls --fancy"
alias lxcstart="lxc-start -n $@"
alias lxcstart="lxc-start -n $@"
alias lxcstop="lxc-stop -n $@"
alias lxcstop="lxc-stop -n $@"
alias lx='ls -lXB'        	# Par extension
alias lx='ls -lXB'        	# Par extension
alias maj="sudo apt-get update && sudo apt-get upgrade --only-upgrade -y | tee /var/log/divers/packages-update-$(date +%F).log; sudo apt-get -f install; sudo apt autoclean; sudo apt autoremove"
alias maj="sudo apt-get update && sudo apt-get upgrade --only-upgrade -y | tee /var/log/divers/packages-update-$(date +%F).log; sudo apt-get -f install; sudo apt autoclean; sudo apt autoremove"
alias mdpdf=" ~/.pandoc/md2pdf"
alias mdpdf=" ~/.pandoc/md2pdf"
alias mem="free -h"
alias mem="free -h"
alias meteo='curl http://wttr.in/Wasquehal'
alias meteo='curl http://wttr.in/Wasquehal'
# alias more="bat"
# alias most="bat"
alias mpv="mpv --no-audio-display"
alias mpv="mpv --no-audio-display"
alias msr='mysql -u root -p'
alias msr='mysql -u root -p'
alias mv='mv --interactive'
alias mv='mv --interactive'
alias myip="ip -br -c a"
alias myip="ip -br -c a"
alias nabo='nano'
alias nabo='nano'
alias neo='su -c cmatrix guillaume'
alias neo='su -c cmatrix guillaume'
alias nocomm='grep -v '^$\|^\s*\#' $1'
alias nocomm='grep -v '^$\|^\s*\#' $1'
alias now='date +"%T"'
alias now='date +"%T"'
alias nslookup='nslookup -sil'
alias nslookup='nslookup -sil'
alias nwho='ping -b -c 2 255.255.255.255 2>&1 | grep "bytes from" | cut -d " " -f 4 | sort | uniq | sed -e "s/://g"'
alias nwho='ping -b -c 2 255.255.255.255 2>&1 | grep "bytes from" | cut -d " " -f 4 | sort | uniq | sed -e "s/://g"'
alias orphand='sudo deborphan | xargs sudo apt-get -y remove --purge'
alias orphand='sudo deborphan | xargs sudo apt-get -y remove --purge'
alias path='echo -e ${PATH//:/\\n}'
alias path='echo -e ${PATH//:/\\n}'
alias please='sudo $(history -p \!\!)'
alias please='sudo $(history -p \!\!)'
alias poe='bash ~/.scripts/byobu-poe.sh'
alias poe='bash ~/.scripts/byobu-poe.sh'
alias ports='netstat -laputn'
alias ports='netstat -laputn'
alias poweroff='sudo /sbin/poweroff'
alias poweroff='sudo /sbin/poweroff'
alias pping="prettyping"
alias pping="prettyping"
alias psg='ps -ef | grep $1'
alias psg='ps -ef | grep $1'
alias psgrep='ps aux |grep -v grep |grep -i'
alias psgrep='ps aux |grep -v grep |grep -i'
alias px='ps aux | grep '
alias px='ps aux | grep '
alias reboot='sudo /sbin/reboot'
alias reboot='sudo /sbin/reboot'
alias reload='source ~/.bashrc'
alias reload='source ~/.bashrc'
alias remote10='xtightvncviewer -via "formateur@formation10" localhost:0'
alias remote10='xtightvncviewer -via "formateur@formation10" localhost:0'
alias remote1='xtightvncviewer -via "formateur@formation1" localhost:0'
alias remote1='xtightvncviewer -via "formateur@formation1" localhost:0'
alias remote2='xtightvncviewer -via "formateur@formation2" localhost:0'
alias remote2='xtightvncviewer -via "formateur@formation2" localhost:0'
alias remote3='xtightvncviewer -via "formateur@formation3" localhost:0'
alias remote3='xtightvncviewer -via "formateur@formation3" localhost:0'
alias remote4='xtightvncviewer -via "formateur@formation4" localhost:0'
alias remote4='xtightvncviewer -via "formateur@formation4" localhost:0'
alias remote5='xtightvncviewer -via "formateur@formation5" localhost:0'
alias remote5='xtightvncviewer -via "formateur@formation5" localhost:0'
alias remote6='xtightvncviewer -via "formateur@formation6" localhost:0'
alias remote6='xtightvncviewer -via "formateur@formation6" localhost:0'
alias remote7='xtightvncviewer -via "formateur@formation7" localhost:0'
alias remote7='xtightvncviewer -via "formateur@formation7" localhost:0'
alias remote8='xtightvncviewer -via "formateur@formation8" localhost:0'
alias remote8='xtightvncviewer -via "formateur@formation8" localhost:0'
alias remote9='xtightvncviewer -via "formateur@formation9" localhost:0'
alias remote9='xtightvncviewer -via "formateur@formation9" localhost:0'
alias restartapache='sudo systemctl restart apache2 && sudo systemctl status -l apache2'
alias restartapache='sudo systemctl restart apache2 && sudo systemctl status -l apache2'
alias rm='rm --interactive'
alias rm='rm --interactive'
alias rot13="tr '[A-Za-z]' '[N-ZA-Mn-za-m]'"
alias rot13="tr '[A-Za-z]' '[N-ZA-Mn-za-m]'"
alias rouletterusse='[ $[ $RANDOM % 6 ] == 0 ] && echo "T es mort !" || echo "Tu vis."'
alias rouletterusse='[ $[ $RANDOM % 6 ] == 0 ] && echo "T es mort !" || echo "Tu vis."'
alias safe-in-cloud='encfs "/home/guillaume/Cloud/MEGAsync/Cloud Drive/Safe/" /home/guillaume/safe-in-cloud/ && df -h | grep -i cloud'
alias safe-in-cloud='encfs "/home/guillaume/Cloud/MEGAsync/Cloud Drive/Safe/" /home/guillaume/safe-in-cloud/ && df -h | grep -i cloud'
alias safe-on-usb='encfs /media/$USER/USBPRO/Coffre-fort ~/safe-on-usb && df -h | grep safe-on'
alias safe-on-usb='encfs /media/$USER/USBPRO/Coffre-fort ~/safe-on-usb && df -h | grep safe-on'
alias script='script ~/.archives/script_sessions/session-$(date +%d-%m-%Y__%Hh-%Mm-%Ss).txt'
alias script='script ma_session-$(date +%d-%m-%Y-%T).txt'
alias sduo='sudo'
alias sduo='sudo'
alias see="bat"
alias see="bat"
alias showconn="lsof -Pan -i tcp -i udp"
alias showconn="lsof -Pan -i tcp -i udp"
alias shutdown='sudo /sbin/shutdown'
alias shutdown='sudo /sbin/shutdown'
alias sl='sl -ae'
alias srestart="sudo systemctl restart"
alias srestart="sudo systemctl restart"
alias ss10="ssh formateur@formation10"
alias ss10="ssh formateur@formation10"
alias ss1="ssh formateur@formation1"
alias ss1="ssh formateur@formation1"
alias ss2="ssh formateur@formation2"
alias ss2="ssh formateur@formation2"
alias ss3="ssh formateur@formation3"
alias ss3="ssh formateur@formation3"
alias ss4="ssh formateur@formation4"
alias ss4="ssh formateur@formation4"
alias ss5="ssh formateur@formation5"
alias ss5="ssh formateur@formation5"
alias ss6="ssh formateur@formation6"
alias ss6="ssh formateur@formation6"
alias ss7="ssh formateur@formation7"
alias ss7="ssh formateur@formation7"
alias ss8="ssh formateur@formation8"
alias ss8="ssh formateur@formation8"
alias ss9="ssh formateur@formation9"
alias ss9="ssh formateur@formation9"
alias sse="ssh formateur@serveuse"
alias sse="ssh formateur@serveuse"
alias sss="ssh formateur@serveur"
alias sss="ssh formateur@serveur"
alias sstatus="sudo systemctl status -l"
alias sstatus="sudo systemctl status -l"
alias ssv2="ssh formateur@192.168.20.83"
alias ssv2="ssh formateur@192.168.20.83"
alias ssv="ssh formateur@192.168.20.82"
alias ssv="ssh formateur@192.168.20.82"
alias ssytemctl='systemctl'
alias ssytemctl='systemctl'
alias stamp='date "+%A_%d/%m/%Y_%Hh%M"'
alias stamp='date "+%A_%d/%m/%Y_%Hh%M"'
alias suod='sudo'
alias suod='sudo'
alias svi='sudo nvim'
alias svi='sudo nvim'
alias swapflush="echo swapoff && sudo swapoff -a && echo swapon && sudo swapon -a && echo done"
alias swapflush="echo swapoff && sudo swapoff -a && echo swapon && sudo swapon -a && echo done"
alias tf='tail -f '
alias tf='tail -f '
alias tm='top -o vsize' #memory
alias tm='top -o vsize' #memory
alias top-commands='history | awk "{print $2}" | awk "BEGIN {FS="|"} {print $1}" |sort|uniq -c | sort -rn | head -10'
alias top-commands='history | awk "{print $2}" | awk "BEGIN {FS="|"} {print $1}" |sort|uniq -c | sort -rn | head -10'
alias tree='tree -Cs'
alias tree='tree -Cs'       
alias tue="sudo /home/guillaume/.shells/bin/fk"
alias tue="sudo pkill"
alias tu='top -o cpu' #cpu
alias tu='top -o cpu' #cpu
alias tux='xpenguins -n 50 --all'
alias tux='xpenguins -n 50 --all'
alias untar='tar -zxvf'
alias untar='tar -zxvf'
alias updb='sudo updatedb &'
alias updb='sudo updatedb &'
# alias usbb='rsync -avz /media/usbdisk/ ~/backup/usb/'
# alias usbb='rsync -avz /media/usbdisk/ ~/backup/usb/'
alias us="su"
alias us="su"
alias vf="cd"
alias vf="cd"
alias videos='cd ~/Videos'
alias videos='cd ~/Videos'
alias vi='nvim'
alias vi='nvim'
alias vm7='ssh formation@serveur -p 2200$(echo $HOSTNAME | tail -c2)'
alias vm7='ssh formation@serveur -p 2200$(echo $HOSTNAME | tail -c2)'
alias web='cd /var/www/html'
alias web='cd /var/www/html'
alias wesh="espeak -s 1 -p 0.0001 'wesh'; clear"
alias wesh="espeak -s 1 -p 0.0001 'wesh'; clear"
alias which='type -all'
alias which='type -all'
# alias wol10="wakeonlan `cat /etc/WoL/macadd-formation10.txt`"
# alias wol10="wakeonlan `cat /etc/WoL/macadd-formation10.txt`"
# alias wol1="wakeonlan `cat /etc/WoL/macadd-formation1.txt`"
# alias wol1="wakeonlan `cat /etc/WoL/macadd-formation1.txt`"
# alias wol2="wakeonlan `cat /etc/WoL/macadd-formation2.txt`"
# alias wol2="wakeonlan `cat /etc/WoL/macadd-formation2.txt`"
# alias wol3="wakeonlan `cat /etc/WoL/macadd-formation3.txt`"
# alias wol3="wakeonlan `cat /etc/WoL/macadd-formation3.txt`"
# alias wol4="wakeonlan `cat /etc/WoL/macadd-formation4.txt`"
# alias wol4="wakeonlan `cat /etc/WoL/macadd-formation4.txt`"
# alias wol5="wakeonlan `cat /etc/WoL/macadd-formation5.txt`"
# alias wol5="wakeonlan `cat /etc/WoL/macadd-formation5.txt`"
# alias wol6="wakeonlan `cat /etc/WoL/macadd-formation6.txt`"
# alias wol6="wakeonlan `cat /etc/WoL/macadd-formation6.txt`"
# alias wol7="wakeonlan `cat /etc/WoL/macadd-formation7.txt`"
# alias wol7="wakeonlan `cat /etc/WoL/macadd-formation7.txt`"
# alias wol8="wakeonlan `cat /etc/WoL/macadd-formation8.txt`"
# alias wol8="wakeonlan `cat /etc/WoL/macadd-formation8.txt`"
# alias wol9="wakeonlan `cat /etc/WoL/macadd-formation9.txt`"
# alias wol9="wakeonlan `cat /etc/WoL/macadd-formation9.txt`"
# alias wola="wakeonlan `cat /etc/WoL/macadd-all.txt` && order4-sucmd reboot"
# alias wola="wakeonlan `cat /etc/WoL/macadd-all.txt` && order4-sucmd reboot"
alias xs="cd"
alias xs="cd"
alias yolo='(git add . && git commit -a -m "Commit du $(date "+%A %d %B %Y") à $(date "+%H heures %M") ." ; git push origin master)'
alias yolo='(git add . && git commit -a -m "Commit du $(date "+%A %d %B %Y") à $(date "+%H heures %M") ." ; git push origin master)'
#  Les alias :
#  Les alias :
