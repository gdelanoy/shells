#!/bin/bash
#####################################################
# Nom du script : extract.sh
# Utilité: Ce script sert à extraire d'une seule commande des fichiers à partir de 
# toutes sortes d'archives.
# Usage: ... (le cas échéant)
# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>
# License: Ce script est sous license GPL v3.
# Veuillez consulter https://www.gnu.org/licenses/quick-guide-gplv3.fr.html
# Créé le: samedi_19/10/2019 à 15h44
#####################################################
#
set -o errexit
set -o nounset
#
# VARIABLES :
#
#Des Couleurs 
# 
bold=$(tput bold) 
underline=$(tput sgr 0 1) 
reset=$(tput sgr0) 
purple=$(tput setaf 171) 
red=$(tput setaf 1) 
green=$(tput setaf 76) 
tan=$(tput setaf 3) 
blue=$(tput setaf 38) 
# 
# En-têtes et Logs
# 
e_header() { printf "\n${bold}${purple}==========  %s  ==========${reset}\n" "$@"  
} 
e_arrow() { printf "➜ $@\n" 
} 
e_success() { printf "${green}✔ %s${reset}\n" "$@" 
} 
e_error() { printf "${red}✖ %s${reset}\n" "$@" 
} 
e_warning() { printf "${tan}➜ %s${reset}\n" "$@" 
} 
e_underline() { printf "${underline}${bold}%s${reset}\n" "$@" 
} 
e_bold() { printf "${bold}%s${reset}\n" "$@" 
} 
e_note() { printf "${underline}${bold}${blue}Note:${reset}  ${blue}%s${reset}\n" "$@" 
} 
#

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


