#!/bin/bash
#####################################################
# Nom du script : bofh.sh
# Utilité: Ce script sert à afficher les excuses du B0fh joliment mises en forme
# Usage: ... (le cas échéant)
# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>
# License: Ce script est sous license GPL v3.
# Veuillez consulter https://www.gnu.org/licenses/quick-guide-gplv3.fr.html
# Créé le: dimanche_20/10/2019 à 20h33
#####################################################
#
if [ -x /usr/games/fortune ]; then
                fortune bofh-excuses | cowsay -f $(ls /usr/share/cowsay/cows/ | shuf -n 1) | lolcat
        fi
fi


