#!/bin/bash
######################################################################
# Nom du script : 1min
# Utilité: Ce script sert à compter des intervalles d'une minute.
#           C'est pratique, pour faire de la gyme par exemple.
# Usage: ... (le cas échéant)
# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>
# License: Ce script est sous license GPL v3.
# Veuillez consulter https://www.gnu.org/licenses/quick-guide-gplv3.fr.html
# La licence GPLv3 vous autorise à faire commerce des produits sous licence.
# Si toutefois vous parvenez à vendre l'un de mes scripts, vous êtes soit
# un vendeur de génie, soit un grippe-sou de classe mondiale ;-) .
# Créé le: dimanche_05/01/2020 à 22h30
######################################################################
#
espeak -s 110 -p 0.000000001 -v mb-fr1 'Je vais compter 30 séquences de une minute chacune, avec des pauses de 30 secondes.' 2>/dev/null
for y in {1..30}
    do
    espeak -s 110 -p 0.000000001 -v mb-fr1 "OK." 2>/dev/null
    espeak -s 110 -p 0.000000001 -v mb-fr1 "séquence numéro $y dans 30 secondes" 2>/dev/null
    sleep 9
    espeak -s 110 -p 0.000000001 -v mb-fr1 "encore 20 secondes" 2>/dev/null
    sleep 9
    espeak -s 110 -p 0.000000001 -v mb-fr1 "encore 10 secondes" 2>/dev/null
    sleep 9
    espeak -s 110 -p 0.000000001 -v mb-fr1 "TOP" 2>/dev/null


    sleep 14
        espeak -s 110 -p 0.000000001 -v mb-fr1 "15 secondes" 2>/dev/null
    sleep 14
        espeak -s 110 -p 0.000000001 -v mb-fr1 "30 secondes" 2>/dev/null
    sleep 14
        espeak -s 110 -p 0.000000001 -v mb-fr1 "45 secondes" 2>/dev/null
    sleep 14
        espeak -s 110 -p 0.000000001 -v mb-fr1 "Et voilà." 2>/dev/null

done
