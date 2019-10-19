#!/bin/bash
#####################################################
# Nom du script : mktar.sh
# Utilité: Ce script sert à créer des archives tar zippées
# Usage: ... (le cas échéant)
# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>
# License: Ce script est sous license GPL v3.
# Veuillez consulter https://www.gnu.org/licenses/quick-guide-gplv3.fr.html
# Créé le: samedi_19/10/2019 à 15h47
#####################################################
#

zip -r "${1%%/}.zip" "$1"

