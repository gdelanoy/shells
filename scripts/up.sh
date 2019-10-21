#!/bin/bash
#####################################################
# Nom du script : up
# Utilité: Ce script remonter de n répertoires en une commande.
# Usage:  up 3 (pour remonter de 3 répertoires, par exemple)
# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>
# License: Ce script est sous license GPL v3.
# Veuillez consulter https://www.gnu.org/licenses/quick-guide-gplv3.fr.html
# Créé le: lundi_21/10/2019 à 23h59
#####################################################
#

DEEP=$1; for i in $(seq 1 ${DEEP:-"1"}); do cd ../; done

