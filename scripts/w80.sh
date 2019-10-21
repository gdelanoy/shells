#!/bin/bash
#####################################################
# Nom du script : w80
# Utilité: Ce script sert à afficher les adresses connectées à mon serveur web.
# Usage: ... (le cas échéant)
# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>
# License: Ce script est sous license GPL v3.
# Veuillez consulter https://www.gnu.org/licenses/quick-guide-gplv3.fr.html
# Créé le: lundi_21/10/2019 à 23h50
#####################################################
#

netstat -tn 2>/dev/null | grep :80 | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -nr | head

