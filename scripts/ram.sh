#!/bin/bash
#####################################################
# Nom du script : ram.sh
# Utilité: Ce script sert à visualiser les programmes les plus gourmands en mémoire vive.
# Usage: ... (le cas échéant)
# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>
# License: Ce script est sous license GPL v3.
# Veuillez consulter https://www.gnu.org/licenses/quick-guide-gplv3.fr.html
# Créé le: samedi_19/10/2019 à 12h50
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
# FONCTIONS :
#
# source /etc/skel/.scripts/functions.sh
#
# LE SCRIPT PROPREMENT DIT : 
#

ps aux | awk '{print $6 "\t" $11}' | sort -rn | head -25 | awk '{print $1/1024 " MB\t\t" $2}'

