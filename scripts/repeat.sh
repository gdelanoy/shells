#!/bin/bash
#####################################################
# Nom du script : repeat.sh
# Utilité: Ce script sert à faire répéter une commande n fois.
# Usage: repeat n ma_commande
# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>
# License: Ce script est sous license GPL v3.
# Veuillez consulter https://www.gnu.org/licenses/quick-guide-gplv3.fr.html
# Créé le: samedi_19/10/2019 à 16h19
#####################################################
#

function koica()       
{
    local i max
    max=$1; shift;
    for ((i=1; i <= max ; i++)); do  # --> C-like syntax
        eval "$@";
    done
}

koica

