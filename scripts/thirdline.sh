#!/bin/bash
#####################################################
# Nom du script : thirdline.sh
# Utilité: Ce script sert à afficher du texte avec une ligne en vert
# à intervalles réguliers (devinez combien).
# Usage: ... (le cas échéant)
# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>
# License: Ce script est sous license GPL v3.
# Veuillez consulter https://www.gnu.org/licenses/quick-guide-gplv3.fr.html
# Créé le: dimanche_20/10/2019 à 20h37
#####################################################
#
 awk '{if (NR%3==0){print "\033[32m" $0 "\033[0m"} else{print}}'

