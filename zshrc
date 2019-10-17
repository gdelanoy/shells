
PATH="/sbin:/bin:/usr/sbin:/usr/bin:/usr/bin/X11:/usr/local/sbin:/usr/local/bin:/home/guillaume/.scripts/bin:/usr/games:/snap/bin:$HOME/.bin:$HOME/.shells/bin"
ROOTPATH="/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin"
LDPATH="/lib:/usr/lib:/usr/local/lib:/usr/lib/gcc-lib/i686-pc-linux-gnu/3.2.3"
MANPATH="/usr/share/man:/usr/local/share/man"
INFODIR="/usr/share/info:/usr/local/share/info"
PAGER="/usr/bin/most"
EDITOR="/usr/bin/vim"
BROWSER="/usr/bin/firefox"
umask 022
export PATH PS1

# Un charset français :
export LESSCHARSET="latin1"

autoload -U promptinit; promptinit
# prompt spaceship

# Path to your oh-my-zsh installation.
export ZSH="/home/guillaume/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

# ZSH_THEME="robbyrussell"

ZSH_THEME="spaceship"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="$(date +"%F %T")"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
plugins=(chucknorris)
plugins=(colored-man-pages)
plugins=(colorize)
plugins=(fzf)
plugins=(z)
plugins=(tmux)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=fr_FR.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export PAGER='most'
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  battery       # Battery level and status
  user          # Username section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  dir           # Current directory section
#  hg            # Mercurial section (hg_branch  + hg_status)
#  package       # Package version
#  node          # Node.js section
#  ruby          # Ruby section
#  elixir        # Elixir section
#  xcode         # Xcode section
#  swift         # Swift section
#  golang        # Go section
#  php           # PHP section
#  rust          # Rust section
#  haskell       # Haskell Stack section
#  julia         # Julia section
#  docker        # Docker section
#  aws           # Amazon Web Services section
#  venv          # virtualenv section
#  conda         # conda virtualenv section
#  pyenv         # Pyenv section
#  dotnet        # .NET section
#  ember         # Ember.js section
#  kubecontext   # Kubectl context section
#  terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  char          # Prompt character
  exit_code     # Exit code section       
)

SPACESHIP_CHAR_SYMBOL="└─-~^~-~➜ "
SPACESHIP_TIME_SHOW="true"
SPACESHIP_TIME_COLOR="green"
SPACESHIP_TIME_FORMAT="[ %T ]"
SPACESHIP_USER_COLOR="071"
SPACESHIP_USER_SHOW='always'
SPACESHIP_USER_PREFIX=""
SPACESHIP_HOST_SHOW="always"
SPACESHIP_HOST_PREFIX="@ "
SPACESHIP_HOST_COLOR="037"
SPACESHIP_DIR_SHOW="true"
SPACESHIP_DIR_PREFIX=""
SPACESHIP_DIR_COLOR="045"
SPACESHIP_DIR_TRUNC="3"
SPACESHIP_EXEC_TIME_PREFIX="ça a pris "
# SPACESHIP_BATTERY_SHOW="true"
# SPACESHIP_BATTERY_THRESHOLD="60"
SPACESHIP_JOBS_SHOW="true"
SPACESHIP_EXIT_CODE_SHOW="true"

# Paramètres de l'historique des commandes :
#
# Nombre d'entrées dans l'historique :
export HISTORY=10000
export SAVEHIST=10000
# Fichier ou est stocké l'historique :
export HISTFILE=$HOME/.history
HISTIGNORE="clear:bg:fg:cd:cd -:exit:date:w:* --help"
HISTCONTROL="ignorespace"
HISTCONTROL="ignoredups"
HISTCONTROL="ignoreboth"
HISTTIMEFORMAT='%Y-%m-%d %H:%M:%S '

# Gestion de la couleur pour 'ls' (exportation de LS_COLORS) :
if [ -x /usr/bin/dircolors ]
then
  if [ -r ~/.dircolors ]
  then
    eval "`dircolors ~/.dircolors`"
  elif [ -r /etc/dir_colors ]
  then
    eval "`dircolors /etc/dir_colors`"
  fi
fi

###########################
# Alias spécifiques à zsh :
###########################
#
autoload colors ; colors
# Quel programme employer selon la terminaison d'un fichier que je nommme :
#
alias -s txt=vim
alias -s conf=vim
alias -s html="firefox"
alias -s org="firefox"

# Alias globaux : 
#
# Exemple :
# 
# $ alias -g C='| wc -l'
# $ grep alias ~/.zsh/* C
# 443

alias -g C='| wc -l'
alias -g CA="2>&1 | cat -A"
alias -g DN=/dev/null
alias -g NE="2> /dev/null"
alias -g EG='|& egrep'
alias -g EH='|& head'
alias -g EL='|& less'
alias -g ET='|& tail'
alias -g FT='|& tail -f'
alias -g H='| head'
alias -g M='| most'
alias -g RNS='| sort -nr'
alias -g S='| sort'
alias -g X='| xargs'
alias -g X0G='| xargs -0 egrep'
alias -g X0='| xargs -0'
alias -g NF='*(.om[1])' # newest file
alias -g G='| grep -'
alias -g L='| less'
alias -g W=' | wc -l'   # wc
alias -g ND='*(/om[1])' # newest directory
alias -g NF='*(.om[1])' # newest file

#  COMPLÉTION :

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.oh-my-zsh/cache
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*'   force-list always
zstyle ':completion:*' squeeze-slashes true

##############
# Fonctions :
##############

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
function repeat()       # Repeat n times command.
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

# L'édition sécurisée avec vim (créez le répertoire ~/.archives avant) : 

function svi() {
	cp $1 ~/.archives/$(basename ${1}.backup-$(date +%F-%T)) && vim $1
}

# cd dans le répertoire où ont eu lieu les dernières modifications :
cl()
{
        last_dir="$(ls -Frt | grep '/$' | tail -n1)"
        if [ -d "$last_dir" ]; then
                cd "$last_dir"
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
alias home='cd ~/'
alias documents='cd ~/Documents'
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
alias cls="clear"

# Des gadgets rigolos ( il en faut ;-) ) :
#
alias rot13="tr '[A-Za-z]' '[N-ZA-Mn-za-m]'"
alias wesh="espeak -s 1 -p 0.0001 'wesh'; clear"
alias kikoo="fortune bofh-excuses | cowsay -f $(ls /usr/share/cowsay/cows/ | shuf -n 1) | lolcat"
alias tux='xpenguins -n 50 --all'
alias meteo='curl http://wttr.in/Loos'
alias rouletterusse='[ $[ $RANDOM % 6 ] == 0 ] && echo "T es mort !" || echo "Tu vis."'

# Administration :
#
alias reload='source ~/.bashrc'
alias confctrl='grep "^[^#]" $1'
alias nslookup='nslookup -sil'
alias LOG="coltail /var/log/*log /var/log/*/*log"
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
alias debug="set -o nounset; set -o xtrace"
alias ssytemctl='systemctl'
alias sstatus="sudo systemctl status -l"
alias srestart="sudo systemctl restart"
alias tue="sudo fk"
alias mem="free -h"
alias cdtmp="cd $(mktemp -d)"
alias topcomm='history | awk "{print $2}" | awk "BEGIN {FS="|"} {print $1}" |sort|uniq -c | sort -rn | head -10'
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

# Les machines du réseau local :
alias nwho='ping -b -c 2 255.255.255.255 2>&1 | grep "bytes from" | cut -d " " -f 4 | sort | uniq | sed -e "s/://g"'

# Trouver ce qui prend de la place sur tout le filesystem :
#
alias diskspace="du -S | sort -n -r |more"
# La taille des répertoires dans le rép. en cours :
alias folders="sudo find . -maxdepth 1 -type d -print | xargs du -sk | sort -rn"

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
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/poweroff'
alias shutdown='sudo /sbin/shutdown'

# Date et Heure :
alias stamp='date "+%A_%d/%m/%Y_%Hh%M"'
alias d='date +%F'
alias now='date +"%T"'

#############################################################
# Des commandes vers mes propres scripts, ou personnalisées :
#########

# Mes scripts de session byobu :
alias hop='bash ~/.scripts/byobu-opensession.sh 2>/dev/null'

# La box de configuration de l'interface graphique de Voyager :
alias box='box=$(yad --title=Voyager --window-icon="/usr/share/xfce4/voyager/p1.png" --image="/usr/share/xfce4/voyager/Voyager0.png" --image-on-top --separator="" --width=300 --height=260 --list --radiolist --no-headers --column="1" --column="option" --print-column 2 true "Voyager Wall" false "Conky Control" false "Plank Control" false "Colors Icons" false "Reparation" false "System Infos")'

# Youtube-dl avec les bonnes options :
alias youtube-dl="youtube-dl -f 'bestaudio[ext=m4a]'"

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
# sduo() { if [[ $@ == "us" ]]; then command sudo su -; else command sudo "$@"; fi; }
# sudo() { if [[ $@ == "us" ]]; then command sudo su -; else command sudo "$@"; fi; }

# VIM : 
#
alias vi='vim'
alias edit='vim'
# alias emacs='vim'

# IPtables :
#
alias iptl='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias iptlnat='sudo /sbin/iptables -t nat -n -v --line-numbers'

# Git :
alias yolo='t add . ; git commit --allow-empty-message -m "$(fortune bofh-excuses | sed '/BOFH/d')" && git push origin master'
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
# alias gmaj="cd ~/.git && find . -maxdepth 1 -type d \( ! -name . \) -exec bash -c "cd '{}' && git fetch" \;"

# MySQL / MariaDB :
alias msqr='mysql -u root -p'

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

# Ouvre tout ce que je  te donne :                                                                                                          
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
# Générer des Shell Scripts avec de bonnes options de départ :
#

shscr(){
        echo "#!/bin/bash" > ${1}
        echo "#####################################################" >> ${1}
        echo "# Nom du script : $(basename $1)" >> ${1}
        echo "# Utilité: Ce script sert à faire pousser des fleurs" >> ${1}
        echo "# Usage: ... (le cas échéant)" >> ${1}
        echo "# Auteur: Guillaume Delanoy <gdelanoy@gmail.com" >> ${1}
        echo "# Créé le: $( date "+%A_%d/%m/%Y à %Hh%M")" >> ${1}
        echo "#####################################################" >> ${1}
        echo "#" >> ${1}
        echo "set -o errexit" >> ${1}
        echo "set -o nounset" >> ${1}
        echo "#" >> ${1}
        echo "# VARIABLES :" >> ${1}
        echo "#" >> ${1}
        echo '# Des Couleurs ' >> ${1}
        echo '# ' >> ${1}
        echo 'bold=$(tput bold) ' >> ${1}
        echo 'underline=$(tput sgr 0 1) ' >> ${1}
        echo 'reset=$(tput sgr0) ' >> ${1}
        echo 'purple=$(tput setaf 171) ' >> ${1}
        echo 'red=$(tput setaf 1) ' >> ${1}
        echo 'green=$(tput setaf 76) ' >> ${1}
        echo 'tan=$(tput setaf 3) ' >> ${1}
        echo 'blue=$(tput setaf 38) ' >> ${1}
        echo '# ' >> ${1}
        echo '# En-têtes et Logs' >> ${1}
        echo '# ' >> ${1}
        echo 'e_header() { printf "\n${bold}${purple}==========  %s  ==========${reset}\n" "$@"  ' >> ${1}
        echo '} ' >> ${1}
        echo 'e_arrow() { printf "➜ $@\n" ' >> ${1}
        echo '} ' >> ${1}
        echo 'e_success() { printf "${green}✔ %s${reset}\n" "$@" ' >> ${1}
        echo '} ' >> ${1}
        echo 'e_error() { printf "${red}✖ %s${reset}\n" "$@" ' >> ${1}
        echo '} ' >> ${1}
        echo 'e_warning() { printf "${tan}➜ %s${reset}\n" "$@" ' >> ${1}
        echo '} ' >> ${1}
        echo 'e_underline() { printf "${underline}${bold}%s${reset}\n" "$@" ' >> ${1}
        echo '} ' >> ${1}
        echo 'e_bold() { printf "${bold}%s${reset}\n" "$@" ' >> ${1}
        echo '} ' >> ${1}
        echo 'e_note() { printf "${underline}${bold}${blue}Note:${reset}  ${blue}%s${reset}\n" "$@" ' >> ${1}
        echo '} ' >> ${1}
        echo "#" >> ${1}
        echo "# FONCTIONS :" >> ${1}
        echo "#" >> ${1}
        echo "source /etc/skel/.scripts/functions.sh" >> ${1}
        echo "#" >> ${1}
        echo "# LE SCRIPT PROPREMENT DIT : " >> ${1}
        echo "#" >> ${1}
        echo "" >> ${1}
        echo "e_header $(basename ${1})" >> ${1}
        echo "" >> ${1}
        echo "" >> ${1}
        chmod 750 ${1}
        vim ${1}
}

#
# FZF : The Fuzzy Finder :
#

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#
# Des fonctions qui vont bien pour fzf :
#
alias joue='cd ~/Musique && mpv "$(fzf  --reverse --height=30% --prompt="𝄠 𝅘𝅥𝅰 " --margin=2,15% --preview "file {}" --preview-window "down:1" )" ; cd -'

alias film='cd ~/Vidéos && mpv "$(fzf)"; cd -'

# Des options pour fzf ( <3 ) :

export FZF_DEFAULT_OPTS="--height 20% --border --layout=reverse --multi --exact --prompt='¯\_(ツ)_/¯ ' --margin=0,10% --preview 'cat {}'"
export FZF_CTRL_T_OPTS="--prompt='(⊃｡•́‿•̀｡)⊃ ' --preview-window=hidden --margin=0,20% --height 20% --layout=reverse --exact --multi --select-1 --exit-0"
export FZF_CTRL_R_OPTS="--prompt='( ͡ಠ ʖ̯ ͡ಠ) ' --margin=0,20% --height 30% --layout=reverse --exact --preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"
export FZF_ALT_C_OPTS="--prompt='( ͡° ͜ʖ ͡°) ' --margin=0,20% --height 30% --layout=reverse --exact --preview 'tree -C {} | head -200'"
export FZF_COMPLETION_TRIGGER='²'

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

# source /home/guillaume/.git/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
