#####################################
# Le Path et les variables système :
#####################################

PATH="/sbin:/bin:/usr/sbin:/usr/bin:/usr/bin/X11:/usr/local/sbin:/usr/local/bin:~/.scripts:/usr/games:/snap/bin:$HOME/.shells/bin"
ROOTPATH="/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin"
LDPATH="/lib:/usr/lib:/usr/local/lib:/usr/lib/gcc-lib/i686-pc-linux-gnu/3.2.3"
MANPATH="/usr/share/man:/usr/local/share/man"
INFODIR="/usr/share/info:/usr/local/share/info"
PAGER="/usr/bin/most"
EDITOR="/usr/bin/vim"
SELECTED_EDITOR="/usr/bin/vim"
BROWSER="/usr/bin/firefox"
umask 022
export PATH PS1

# Mon prompt est complexe, je le définis dans des fichiers à part :
PS1=$(cat $HOME/.shells/ps1.txt)
PS2=$(cat $HOME/.shells/ps2.txt)
PROMPT_COMMAND=$(cat $HOME/.shells/pscmd.txt)

# Un charset français :
export LESSCHARSET="latin1"

# Des options pour fzf ( <3 ) :

export FZF_DEFAULT_OPTS="--height 20% --border --layout=reverse --multi --exact --prompt='¯\_(ツ)_/¯ ' --margin=0,10% --preview 'cat {}'"
export FZF_CTRL_T_OPTS="--prompt='(⊃｡•́‿•̀｡)⊃ ' --preview-window=hidden --margin=0,20% --height 20% --layout=reverse --exact --multi --select-1 --exit-0"
export FZF_CTRL_R_OPTS="--prompt='( ͡ಠ ʖ̯ ͡ಠ) ' --margin=0,20% --height 30% --layout=reverse --exact --preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"
export FZF_ALT_C_OPTS="--prompt='( ͡° ͜ʖ ͡°) ' --margin=0,20% --height 30% --layout=reverse --exact --preview 'tree -C {} | head -200'"
export FZF_COMPLETION_TRIGGER='²'

# Color - Couleurs (à utiliser avec echo -e $Couleur "msg") :
#
# Color - Couleurs classiques :
	Black="\033[0;30m"          # Color Black - Classic
	Red="\033[0;31m"            # Color Red - Classic
	Green="\033[0;32m"          # Color Green - Classic
	Yellow="\033[0;33m"         # Color Yellow - Classic
	Blue="\033[0;34m"           # Color Blue - Classic
	Purple="\033[0;35m"         # Color Purple - Classic
	Cyan="\033[0;36m"           #  Color Cyan - Classic
	White="\033[0;37m"          # Color White - Classic

# Color - Gras :
	BBlack="\033[1;30m"       # Color Black - Bold
	BRed="\033[1;31m"         # Color Red - Bold
	BGreen="\033[1;32m"       # Color Green - Bold
	BYellow="\033[1;33m"      # Color Yellow - Bold
	BBlue="\033[1;34m"        # Color Blue - Bold
	BPurple="\033[1;35m"      # Color Purple - Bold
	BCyan="\033[1;36m"        # Color Cyan - Bold
	BWhite="\033[1;37m"       # Color White - Bold

# Color - Souligné :
	UBlack="\033[4;30m"       # Color Black - Underlined
	URed="\033[4;31m"         # Color Red - Underlined
	UGreen="\033[4;32m"       # Color Green - Underlined
	UYellow="\033[4;33m"      # Color Yellow - Underlined
	UBlue="\033[4;34m"        # Color Blue - Underlined
	UPurple="\033[4;35m"      # Color Purple - Underlined
	UCyan="\033[4;36m"        # Color Cyan - Underlined
	UWhite="\033[4;37m"       # Color White - Underlined

# Color - Arrière-plan :
	On_Black="\033[40m"       # Color Black - BackGround
	On_Red="\033[41m"         # Color Red - BackGround
	On_Green="\033[42m"       # Color Green - BackGround
	On_Yellow="\033[43m"      # Color Yellow - BackGround
	On_Blue="\033[44m"        # Color Blue - BackGround
	On_Purple="\033[45m"      # Color Purple - BackGround
	On_Cyan="\033[46m"        # Color Cyan - BackGround
	On_White="\033[47m"       # Color White - BackGround

# Color - Intensité :
	IBlack="\033[0;90m"       # Color Black - Intense
	IRed="\033[0;91m"         # Color Red - Intense
	IGreen="\033[0;92m"       # Color Green - Intense
	IYellow="\033[0;93m"      # Color Yellow - Intense
	IBlue="\033[0;94m"        # Color Blue - Intense
	IPurple="\033[0;95m"      # Color Purple - Intense
	ICyan="\033[0;96m"        # Color Cyan - Intense
	IWhite="\033[0;97m"       # Color White - Intense

# Color - Gras & Intensité :
	BIBlack="\033[1;90m"      # Color Black - Intense & Bold
	BIRed="\033[1;91m"        # Color Red - Intense & Bold
	BIGreen="\033[1;92m"      # Color Green - Intense & Bold
	BIYellow="\033[1;93m"     # Color Yellow - Intense & Bold
	BIBlue="\033[1;94m"       # Color Blue - Intense & Bold
	BIPurple="\033[1;95m"     # Color Purple - Intense & Bold
	BICyan="\033[1;96m"       # Color Cyan - Intense & Bold
	BIWhite="\033[1;97m"      # Color White - Intense & Bold

# Color - Intensité de l'arrière-plan :
	On_IBlack="\033[0;100m"   # Color Black - Intense BackGround
	On_IRed="\033[0;101m"     # Color Red - Intense BackGround
	On_IGreen="\033[0;102m"   # Color Green - Intense BackGround
	On_IYellow="\033[0;103m"  # Color Yellow - Intense BackGround
	On_IBlue="\033[0;104m"    # Color Blue - Intense BackGround
	On_IPurple="\033[10;95m"  # Color Purple - Intense BackGround
	On_ICyan="\033[0;106m"    # Color Cyan - Intense BackGround
	On_IWhite="\033[0;107m"   # Color White - Intense BackGround

# Paramètres de l'historique des commandes :
#
# Nombre d'entrées dans l'historique :
export HISTORY=100000
export SAVEHIST=100000
# Fichier ou est stocké l'historique :
export HISTFILE=$HOME/.history
HISTIGNORE="clear:bg:fg:cd:cd -:exit:date:w:* --help"
HISTCONTROL="ignorespace"
HISTCONTROL="ignoredups"
HISTCONTROL="ignoreboth"
HISTTIMEFORMAT='%Y-%m-%d %H:%M:%S '

# Prise en compte des fichiers cachés :
shopt -s dotglob

# Autres options :
shopt -s cdspell
shopt -s cdable_vars
shopt -s checkhash
shopt -s checkwinsize
shopt -s sourcepath
shopt -s no_empty_cmd_completion
shopt -s cmdhist
shopt -s histappend histreedit histverify
shopt -s extglob
shopt -s nullglob

# Allumer le pavé numérique au login :
case "`tty`" in /dev/tty[0-6]*)
        setleds +num
esac

# Gestion de la couleur pour 'ls' (exportation de LS_COLORS) :
if [ -x /usr/bin/dircolors ]
then
  if [ -r $HOME/.shells/dircolors ]
  then
    eval "`dircolors ~/.dircolors`"
  elif [ -r /etc/dir_colors ]
  then
    eval "`dircolors /etc/dir_colors`"
  fi
fi

##############
# Fonctions :
##############
#
# Complétion pour ssh :

complete -W "$(echo `cat ~/.bash_history | egrep '^ssh ' | sort | uniq | sed 's/^ssh //'`;)" ssh


# Extraction facile :
extract () {
  if [ -f $1 ] ; then
      case $1 in
          *.tar.bz2)   tar xvjf $1    ;;
          *.tar.gz)    tar xvzf $1    ;;
          *.bz2)       bunzip2 $1     ;;
          *.rar)       rar x $1       ;;
          *.gz)        gunzip $1      ;;
          *.tar)       tar xvf $1     ;;
          *.tbz2)      tar xvjf $1    ;;
          *.tgz)       tar xvzf $1    ;;
          *.zip)       unzip $1       ;;
          *.Z)         uncompress $1  ;;
          *.7z)        7z x $1        ;;
          *)           echo "Je ne sais pas comment extraire '$1'..." ;;
      esac
  else
      echo "'$1' n est pas un fichier valide !"
  fi
}

# Créer une archive à partir d'un répertoire donné :
mktar() { tar cvf  "${1%%/}.tar"     "${1%%/}/"; }
mktgz() { tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"; }
mktbz() { tar cvjf "${1%%/}.tar.bz2" "${1%%/}/"; }

# Créer un répertoire ET cd dedans :
function mkcd() {
    mkdir -p -v $1
    cd $1
}

# Chiffrement / Déchiffrement :
encrypt ()
{
gpg -ac --no-options "$1"
}
decrypt ()
{
gpg --no-options "$1"
}

# Chercher, trouver :
function findc()
   {
      find . -type f | xargs grep -nHi "${1}"
   }
# Trouver des fichiers :
alias ff='find / -type f -name $1'
# alias fd='find / -type d -name $1'
alias ffi='sudo find / -iname $1'

# Générateur de mots de passe (indiquer un chiffre pour la longueur) :
genpasswd() { 
	local l=$1
   	[ "$l" == "" ] && l=16
      	tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${l} | xargs 
	}

# Améliorer l'appel des pages de man :
function man()
{
    for i ; do
        xtitle The $(basename $1|tr -d .[:digit:]) manual
        command man -a "$i"
    done
}

# Déboguage en http :
hthead () { /usr/bin/curl -I -L $@ ; }
htdebug () { /usr/bin/curl $@ -o /dev/null -w "dns: %{time_namelookup} connect: %{time_connect} pretransfer: %{time_pretransfer} starttransfer: %{time_starttransfer} total: %{time_total}\n" ; }

# Créer une archive (*.tar.gz) à partir d'un répertoire donné :
function maketar() { tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"; }

# Créer une archive ZIP archive d'un fichier ou d'un répertoire :
function makezip() { zip -r "${1%%/}.zip" "$1" ; }

# Rigoler un peu à l'ouverture de session ... ;-)
# Désactivé au boot (trop envahissant), transformé en fonction pour le fun :
bofh() {
if [ -x /usr/games/fortune ]; then
 	fortune bofh-excuses | cowsay -f $(ls /usr/share/cowsay/cows/ | shuf -n 1) | lolcat
fi
}

# Gestion des processus :
myps() { ps $@ -u $USER -o pid,%cpu,%mem,bsdtime,command ; }
pp() { my_ps f | awk '!/awk/ && $0~var' var=${1:-".*"} ; }

# Faire répéter une commande n fois :
function repeat()       
{
    local i max
    max=$1; shift;
    for ((i=1; i <= max ; i++)); do  # --> C-like syntax
        eval "$@";
    done
}

# Montrer tous les paquetages installés :
showpkg () {
  apt-cache pkgnames | grep -i "$1" | sort
  return;
}

# Pour Noël :
snow() {
	           clear;while :;do echo $LINES $COLUMNS $(($RANDOM%$COLUMNS));sleep 0.1;done|gawk '{a[$3]=0;for(x in a) {o=a[x];a[x]=a[x]+1;printf "\033[%s;%sH ",o,x;printf "\033[%s;%sH*\033[0;0H",a[x],x;}}'
   }

# Afficher une ligne sur trois en vert, pour que les sorties soient plus lisibles :
function thirdline(){ awk '{if (NR%3==0){print "\033[32m" $0 "\033[0m"} else{print}}'; } 

# Serve a directory on a given port
# https://davidwalsh.name/serve-directory-python
# $1 = port
# Example: servedir 8080
servedir() {
  # Allow myself to change the port ($1)
  python -m SimpleHTTPServer "$1"
}

# Voir la liste des services lancés lisiblement :
function services() { printf "$(service --status-all 2>&1|sed -e 's/ + /\\E42m + \\E0m/g' -e 's/ - /\\E41m - \\E0m/g' -e 's/ ? /\\E43m ? \\E0m/g')\n"; }

#  Lancer une appli indépendamment du shell d'origine et sans sortie :
function nh() {
	    nohup "$@" &>/dev/null &
    }
# Faut-il vraiment expliquer celle-là ? O:-)
function rtfm() { help $@ || man $@ || $BROWSER "http://www.google.com/search?q=$@"; }

# Montrer les différences entre deux fichiers en couleurs :
function showdiff()
{
	wdiff -n -w $'\033[30;41m' -x $'\033[0m' -y $'\033[30;42m' -z $'\033[0m' $1 $2
}

# Remonter une arborescence autant de niveaux que je le mentionne :
function up() {
	[ "${1/[^0-9]/}" == "$1" ] && {
	 local ups=""
	 for ((i=1; i<=$1; i++))
	 do
	     ups=$ups"../"
	 done
         cd $ups
	      }
	}

# L'édition sécurisée avec vim (créez le répertoire ~/.archives avant) : 

function safevi() {
	cp $1 ~/.archives/$(basename ${1}.backup-$(date +%F-%T)) && nvim $1
}

# cd dans le répertoire où ont eu lieu les dernières modifications :
cl()
{
        last_dir="$(ls -Frt | grep '/$' | tail -n1)"
        if [ -d "$last_dir" ]; then
                cd "$last_dir"
        fi
}
# "Marquer" le rép. en cours pour y retourner plus tard :
rd(){
    pwd > "$HOME/.lastdir_$1"
}
# Retourner dans le rép. "marqué" :
crd(){
        lastdir="$(cat "$HOME/.lastdir_$1")">/dev/null 2>&1
        if [ -d "$lastdir" ]; then
                cd "$lastdir"
        else
                echo "no existing directory stored in buffer $1">&2
        fi
}

# Copier-coller en CLI :
copie(){ cp $1 /tmp/copie.$1; }
alias colle="ls /tmp/copie* | sed 's|[^\.]*.\.||' | xargs -I % mv /tmp/copie.% ./%"

# Une couleur au hasard à chaque ligne d'un tail -f :
coltail()
	{
	tail -F "${1}" |while read -r line;do printf "\033[38;5;%dm%s\033[0m\n" $(($RANDOM%255)) "$line";done
	}

# des fonds d'écran dynamiques :
scr-morpheus()
	{
	/usr/lib/xscreensaver/glmatrix -window-id $( xwininfo -int -name "Bureau" | grep "Bureau" | awk '{print $4}' ) &
	}

scr-flurry()
	{
	/usr/lib/xscreensaver/flurry -window-id $( xwininfo -int -name "Bureau" | grep "Bureau" | awk '{print $4}' ) &
	}

# Faire parler le nordinateur (en anglais) :
say()
	{
espeak "$*" --stdout | play - tempo 0.8 bend 0.1,-500,0.5 chorus 1 1.5 20 1 3 8 -s echos .7 .7 100 .5 10 0.1 reverb
	}

# Faire parler le nordinateur (en français) :
dis()
	{
cd /usr/lib/x86_64-linux-gnu/espeak-data/voices/mb/
espeak -v mb-fr1 "$*" --stdout | play - tempo 0.8 bend 0.1,-500,0.5 chorus 1 1.5 20 1 3 8 -s echos .7 .7 100 .5 10 0.1 reverb
cd -
	}

# Faire parler le nordinateur (en allemand) :
sag()
	{
cd /usr/lib/x86_64-linux-gnu/espeak-data/voices/mb/
espeak -v mb-de2 "$*" --stdout | play - tempo 1.1 bend 0.1,-500,0.5 chorus 1 1.5 20 1 3 8 -s echos .7 .7 100 .5 10 0.1 reverb
cd -
	}

###############
#  Les alias :
###############

# Se déplacer rapidement dans le filesystem :
#
alias back='cd $OLDPWD'
alias cd..='cd ..'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

# Raccourcis de répertoires :
#
alias home='cd ~'
alias docs='cd ~/Documents'
alias downloads='cd ~/Downloads'
alias books='cd ~/eBooks'
alias images='cd ~/Images'
alias videos='cd ~/Videos'
alias web='cd /var/www/html'

# Demander confirmation avant d'écraser un fichier :
#
alias cp='cp --interactive'
alias mv='mv --interactive'
alias rm='rm --interactive'

# Raccourcis pour 'ls' :
#
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

# Pour se rendre la vie plus facile (et lutter contre la dyslexie) :
# 
alias tree='tree -Cs'       
alias less='less --quiet'
alias df='df --human-readable'
alias du='du -h --max-depth=1'
alias psgrep='ps aux |grep -v grep |grep -i'
alias count='du -a | cut -d/ -f2 | sort | uniq -c | sort -nr'
alias findn='find . -iname '"${1}"''
alias tu='top -o cpu' #cpu
alias tm='top -o vsize' #memory
alias biggest='BLOCKSIZE=1048576; du -chx | sort -rh'
alias tf='tail -f '
alias dn='OPTIONS=$(\ls -F | grep /$); select s in $OPTIONS; do cd $PWD/$s; break;done'
alias path='echo -e ${PATH//:/\\n}'
alias xs="cd"
alias vf="cd"
alias see="most"
alias mpv="mpv --no-audio-display"
alias couleurs="grep  '# Color' ~/.bashrc"
alias cls="sync; clear"

# Des gadgets rigolos ( il en faut ;-) ) :
#
alias rot13="tr '[A-Za-z]' '[N-ZA-Mn-za-m]'"
alias wesh="espeak -s 1 -p 0.0001 'wesh'; clear"
alias kikoo="fortune bofh-excuses | cowsay -f $(ls /usr/share/cowsay/cows/ | shuf -n 1) | lolcat"
alias tux='xpenguins -n 50 --all'
alias meteo='curl http://wttr.in/Loos'
alias rouletterusse='[ $[ $RANDOM % 6 ] == 0 ] && echo "PAN ! T' es mort !" || echo "clic ...."'

# Administration :
#
alias reload='source ~/.bashrc'
alias confctrl='grep "^[^#]" $1'
alias nocomm='grep -v '^$\|^\s*\#' $1'
alias nslookup='nslookup -sil'
alias LOG="coltail /var/log/*log /var/log/*/*log"
# alias LOGS="find /var/log -type f -exec file {} \; | grep 'text' | cut -d' ' -f1 | sed -e's/:$//g' | grep -v '[0-9]$' | xargs tail -f"
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
alias tue="sudo fk"
alias mem="free -h"
alias cdtmp="cd $(mktemp -d)"
alias top-commands='history | awk "{print $2}" | awk "BEGIN {FS="|"} {print $1}" |sort|uniq -c | sort -rn | head -10'
alias neo='su -c cmatrix guillaume'
alias cputemp='sensors | grep Core'
alias chx='sudo chmod 755'
alias chr='sudo chmod 644'
alias ipinfo='curl ipinfo.io'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias cmderror='/usr/local/bin/cmderror'
alias showconn="lsof -Pan -i tcp -i udp"
alias ram='sudo smem --userfilter="$USER" --pie name -s pss'
alias close='eject -t /dev/sr0'
alias open='eject /dev/sr0'

sduo() { if [[ $@ == "us" ]]; then command sudo su -; else command sudo "$@"; fi; }

# Les machines du réseau local :
alias nwho='ping -b -c 2 255.255.255.255 2>&1 | grep "bytes from" | cut -d " " -f 4 | sort | uniq | sed -e "s/://g"'

# Trouver ce qui prend de la place sur tout le filesystem :
#
alias diskspace="du -S | sort -n -r |more"
# La taille des répertoires dans le rép. en cours :
alias folders="find . -maxdepth 1 -type d -print | xargs du -sk | sort -rn"

# Raccourcis pour la gestion des paquetages :
#	
alias apti='sudo apt-get install'
alias apts="sudo apt-cache search"
alias aptr='sudo apt-get remove' 
alias orphand='sudo deborphan | xargs sudo apt-get -y remove --purge'
alias aptclean='sudo apt-get autoclean && sudo apt-get autoremove && sudo apt-get clean && sudo apt-get remove && orphand' 
alias maj="sudo apt-get update && sudo apt-get upgrade -y | tee /var/log/divers/packages-update-$(date +%F).log"

# Arrêt / Reboot :
#
# (à combiner avec quelques binaires autorisés en NOPASSWD dans la conf de sudo)
alias dodo='sudo /sbin/poweroff'
alias reboot='tsudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/poweroff'
alias shutdown='sudo /sbin/shutdown'

# Date et Heure :
alias stamp='date "+%A_%d/%m/%Y_%Hh%M"'
alias d='date +%F'
alias now='date +"%T"'

#############################################################
# Des commandes vers mes propres scripts, ou personnalisées :
#############################################################

# Mes montages chiffrés :
alias safecloud='encfs "$HOME/Cloud/MEGAsync/Cloud Drive/Safe/" $HOME/safe-in-cloud/ && df -h | grep -i cloud'
alias safeusb='encfs /media/$USER/USBPRO/Coffre-fort ~/safe-on-usb && df -h | grep safe-on'

# Mes scripts de session byobu :
alias hop='bash ~$HOME/.shells/scripts/byobu-opensession.sh 2>/dev/null'

# La box de configuration de l'interface graphique de Voyager :
alias box='box=$(yad --title=Voyager --window-icon="/usr/share/xfce4/voyager/p1.png" --image="/usr/share/xfce4/voyager/Voyager0.png" --image-on-top --separator="" --width=300 --height=260 --list --radiolist --no-headers --column="1" --column="option" --print-column 2 true "Voyager Wall" false "Conky Control" false "Plank Control" false "Colors Icons" false "Reparation" false "System Infos")'

# Youtube-dl avec les bonnes options :
alias youtube-dl="/usr/local/bin/youtube-dl -f 'bestaudio[ext=m4a]'"

################
# à peaufiner :
################

# alias backup='rsync -r -t -p -o -g -x -v --progress --delete -c -H -i -s /home/nickyeoman/saveme /media/nickyeoman/portabledrive'
# alias usbb='rsync -avz /media/usbdisk/ ~/backup/usb/'

###############################
# Pour les différentes applis : 
###############################

# Raccourcis pour 'grep' :
#
alias {G,g}{re,er}p='grep'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'

# Raccourcis pour 'sudo' :
#
alias please='sudo $(history -p \!\!)'
alias sduo='sudo'
alias suod='sudo'
alias sud='sudo su'
alias us='su'

alias svi='sudo nvim'
alias us="su"

# VIM : 
#
alias vi='vim'
alias edit='vim'
alias emacs='vim'

# IPtables :
#
alias iptl='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias iptlnat='sudo /sbin/iptables -t nat -n -v --line-numbers'

# Git :
alias yolo='git commit --allow-empty-message -m "" && git push origin master'
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
# alias gmaj="cd ~/.git && find . -maxdepth 1 -type d \( ! -name . \) -exec bash -c "cd '{}' && git fetch" \;"

# MySQL / MariaDB :
alias msr='mysql -u root -p'

# Apache :
alias restartapache='sudo systemctl restart apache2 && sudo systemctl status -l apache2'
alias apachedit='sudo vim /etc/apache2/apache2.conf'
alias apachegrace='sudo apachectl graceful'
alias apachelog="less +F /var/log/apache2/*.log"

# Ansible :
# Récupérer les facts Ansible de n'importe quel serveur en un instant :
ansibleSetup() {
    ansible $1 -m setup > ~/$1.txt
}
alias accio=ansibleSetup
alias ans='ansible'
alias ansp='ansible-playbook'

# Docker : 
alias dockip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"
alias dockd="docker run -d -P"			# Daemonized container
alias docki="docker run -t -i -P"       	# Insteractive container

dockb() { docker build -t="$1" .; }		# docker build
dockri() { docker rmi $(docker images -q); }	# rm image
dockrm() { docker rm $(docker ps -q -a); }	# rm container

# Ouvre tout ce que je te donne :                                                                                                          
ouvre () {
  if [ -f $1 ] ; then
      case $1 in
          *.txt|*.sh|*.conf)       			vim $1 ;;
          *.mp3|*.ogg|*.flac|*.wav|*.wma)    		mpv $1 ;;
	  *.jp*g|*.gif|*.png|*.bmp)			ristretto $1 ;;
	  *.avi|*.mkv|*.webm|*.mp*g|*.mov|*.wmv|*.mp4) 	vlc $1 ;;
	  *.torrent)                                    deluge $1 ;;
	  *.desktop|*.htm*|*.php*)			firefox $1 ;;
	  *.kbd*)					keepass $1 ;;
          *.odp|*.odt|*.ods|*.doc*|*.xls*|*.ppt*)      	libreoffice $1 ;;
          *)	echo "Je ne sais pas avec quoi ouvrir '$1'..." ;;
      esac
  else
      echo "'$1' n'est pas un fichier valide !"
  fi
}

#
# FZF : The Fuzzy Finder :
#

[ -f $HOME/.shells/.fzf.bash ] && source $HOME/.shells/.fzf.bash
#
# Des fonctions qui vont bien pour fzf :
#
export FZF_DEFAULT_OPTS='--height 30% --layout=reverse --preview --exact --border'
export FZF_CTRL_T_OPTS="--height 30% --layout=reverse --exact --border --preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'

alias joue='cd ~/Musique && mpv "$(fzf  --reverse --height=30% --prompt="𝄠 𝅘𝅥𝅰 " --margin=2,15% --preview "file {}" --preview-window "down:1" )" ; cd -'
alias film='cd ~/Vidéos && mpv "$(fzf)"; cd -'

look()
	{
fzf --exact --preview-window down:2 --preview '[[ $(file --mime {}) =~ binary ]] &&
                 echo {} is a binary file ||
                 (bat --style=numbers --color=always {} ||
                  highlight -O ansi -l {} ||
                  coderay {} ||
                  rougify {} ||
                  cat {}) 2> /dev/null | head -500'
	}

# fe [FUZZY PATTERN] - Open the selected file with the default editor
#   - Bypass fuzzy finder if there's only one match (--select-1)
#   - Exit if there's no match (--exit-0)
fe() {
  local files
  IFS=$'\n' files=($(fzf-tmux --query="$1" --multi --select-1 --exact --exit-0))
  [[ -n "$files" ]] && ${EDITOR:-vim} "${files[@]}"
}

# fh - repeat history
runcmd (){ perl -e 'ioctl STDOUT, 0x5412, $_ for split //, <>' ; }
fh() {
  ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed -re 's/^\s*[0-9]+\s*//' | runcmd
}

# fcd : cd with a menu :

function fcd() {     if [[ "$#" != 0 ]]; then         builtin cd "$@";         return;     fi;     while true; do         local lsd=$(echo ".." && ls -p | grep '/$' | sed 's;/$;;');         local dir="$(printf '%s\n' "${lsd[@]}" |
            fzf --reverse --preview '
                __cd_nxt="$(echo {})";
                __cd_path="$(echo $(pwd)/${__cd_nxt} | sed "s;//;/;")";
                echo $__cd_path;
                echo;
                ls -p --color=always "${__cd_path}";
        ')";         [[ ${#dir} != 0 ]] || return 0;         builtin cd "$dir" &> /dev/null;     done; }

alias son="pulseaudio -k && pulseaudio -D"

