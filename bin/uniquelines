#!/bin/bash
######################################################################
# Nom du script : uniquelines.sh
# Utilité: Ce script sert à faire pousser des fleurs
# Usage: ... (le cas échéant)
# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>
# License: Ce script est sous license GPL v3.
# Veuillez consulter https://www.gnu.org/licenses/quick-guide-gplv3.fr.html
# La licence GPLv3 vous autorise à faire commerce des produits sous licence.
# Si toutefois vous parvenez à vendre l'un de mes scripts, vous êtes soit
# un vendeur de génie, soit un grippe-sou de classe mondiale ;-) .
# Créé le: vendredi_07/02/2020 à 16h42
######################################################################
#
set -o errexit
set -o nounset
#
# VARIABLES :
#
#Des Couleurs :
#
source /home/$USER/.shells/scripts/couleurs.shell
#
# FONCTIONS :
#
# source /home/guillaume/.shells/scripts/functions.shell
#
# LE SCRIPT PROPREMENT DIT :
#

clear
# e_header uniquelines.sh
echo ""
echo ""
ebu_bleu "Çi-dessous les lignes que l'on trouve dans $1, et pas dans $2 :"
echo ""
awk 'FNR==NR {a[$0]++; next} !a[$0]' $1 $2
