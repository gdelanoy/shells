#!/bin/bash

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
        echo '#Des Couleurs ' >> ${1}
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
        echo "# source /etc/skel/.scripts/functions.sh" >> ${1}
        echo "#" >> ${1}
        echo "# LE SCRIPT PROPREMENT DIT : " >> ${1}
        echo "#" >> ${1}
        echo "" >> ${1}
        echo "e_header $(basename ${1})" >> ${1}
        echo "" >> ${1}
        echo "" >> ${1}
        chmod 750 ${1}
        vim ${1}