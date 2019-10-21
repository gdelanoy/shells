#!/bin/bash
#####################################################
# Nom du script : gstatus-all
# Utilité: Ce script sert à afficher le statut de tous les repos git à partir de mon 
# répertoire personnel.
# Usage: ... (le cas échéant)
# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>
# License: Ce script est sous license GPL v3.
# Veuillez consulter https://www.gnu.org/licenses/quick-guide-gplv3.fr.html
# Créé le: mardi_22/10/2019 à 00h05
#####################################################
#

find ~ -name ".git" 2> /dev/null | sed 's/\/.git/\//g' | awk '{print "-------------------------\n\033[1;32mGit Repo:\033[0m " $1; system("git --git-dir="$1".git --work-tree="$1" status")}'

