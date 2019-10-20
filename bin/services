#!/bin/bash
#####################################################
# Nom du script : services.sh
# Utilité: Ce script sert à afficher lisiblement la liste des services actifs
# Usage: ... (le cas échéant)
# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>
# License: Ce script est sous license GPL v3.
# Veuillez consulter https://www.gnu.org/licenses/quick-guide-gplv3.fr.html
# Créé le: dimanche_20/10/2019 à 20h49
#####################################################
#

printf "$(service --status-all 2>&1|sed -e 's/ + /\\E42m + \\E0m/g' -e 's/ - /\\E41m - \\E0m/g' -e 's/ ? /\\E43m ? \\E0m/g')\n"

