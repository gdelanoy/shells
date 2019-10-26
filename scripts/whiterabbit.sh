#!/bin/bash
#####################################################
# Nom du script : whiterabbit.sh
# Utilité: Ce script sert à rien, à part à se rappeler une scène de Matrix.
# Usage: ... (le cas échéant)
# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>
# License: Ce script est sous license GPL v3.
# Veuillez consulter https://www.gnu.org/licenses/quick-guide-gplv3.fr.html
# Créé le: dimanche_27/10/2019 à 00h25
#####################################################
#

clear ; for t in "Wake up" "The Matrix has you" "Follow the white rabbit" "Knock, knock";do clear;pv -qL10 <<<$'\e[2J'$'\e[32m'$t$'\e[37m';sleep 5;done


