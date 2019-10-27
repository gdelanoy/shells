#!/bin/bash
#####################################################
# Nom du script : bounce.sh
# Utilité: Ce script sert à faire rebondir le curseur sur les bords de votre terminal,
# autrement dit à rien, mais c'est rigolo :-) .
# Usage: ... (le cas échéant)
# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>
# License: Ce script est sous license GPL v3.
# Veuillez consulter https://www.gnu.org/licenses/quick-guide-gplv3.fr.html
# Créé le: dimanche_27/10/2019 à 12h10
#####################################################
#

yes $COLUMNS $LINES|awk 'BEGIN{x=y=e=f=1}{if(x==$1||!x){e*=-1};if(y==$2||!y){f*=-1};x+=e;y+=f;printf "\033[%s;%sH",y,x;for (a=0;a<400000;a++){}}'

