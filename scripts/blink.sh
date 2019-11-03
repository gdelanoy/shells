#!/bin/bash
######################################################################
# Nom du script : blink
# Utilité: Ce script sert à faire clignoter la LED du bouton CAPS Lock, par exemple
# pour signaler la fin d'une tache.
# Usage: ... (le cas échéant)
# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>
# License: Ce script est sous license GPL v3.
# Veuillez consulter https://www.gnu.org/licenses/quick-guide-gplv3.fr.html
# La licence GPLv3 vous autorise à faire commerce des produits sous licence.
# Si toutefois vous parvenez à vendre l'un de mes scripts, vous êtes soit
# un vendeur de génie, soit un grippe-sou de classe mondiale ;-) .
# Créé le: dimanche_03/11/2019 à 00h23
######################################################################
#

for a in $(seq 18); do xdotool key Num_Lock;sleep .2; xdotool key Caps_Lock;done

