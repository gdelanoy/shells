#!/bin/bash
#####################################################
# Nom du script : whatwifi
# Utilité: Ce script sert à afficher les ssid des réseaux wifi disponibles,
# par ordre de force du signal.
# Usage: ... (le cas échéant)
# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>
# License: Ce script est sous license GPL v3.
# Veuillez consulter https://www.gnu.org/licenses/quick-guide-gplv3.fr.html
# Créé le: lundi_21/10/2019 à 23h54
#####################################################
#

sudo iw dev wlo1 scan | egrep "SSID|signal" | awk -F ":" '{print $2}' | sed 'N;s/\n/:/' | sort


