#!/bin/bash
#####################################################
# Nom du script : fgrep
# Utilité: Ce script sert à trouver des fichiers contenant une chaine donnée
# Usage: fgrep simone (renvoie tous les fichiers contenant 'simone' )
# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>
# License: Ce script est sous license GPL v3.
# Veuillez consulter https://www.gnu.org/licenses/quick-guide-gplv3.fr.html
# Créé le: mardi_22/10/2019 à 00h39
#####################################################
#

find . -type f -print0 2>/dev/null | xargs -0 grep --color=AUTO -Hn "$@" 2>/dev/null


