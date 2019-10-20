#!/bin/bash
#####################################################
# Nom du script : servedir
# Utilité: Ce script sert à publier le répertoire en cours en http, sur le port de votre choix
# Usage: serverdir 8080 (publie le répertoire courant sur le port 8080 )
# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>
# License: Ce script est sous license GPL v3.
# Veuillez consulter https://www.gnu.org/licenses/quick-guide-gplv3.fr.html
# Créé le: dimanche_20/10/2019 à 20h46
#####################################################
#
python -m SimpleHTTPServer "$1"

