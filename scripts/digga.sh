#!/bin/bash
######################################################################
# Nom du script : digga.sh
# Utilité: Ce script sert à interroger les serveurs DNS confortablement.
# Usage: ... (le cas échéant)
# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>
# License: Ce script est sous license GPL v3.
# Veuillez consulter https://www.gnu.org/licenses/quick-guide-gplv3.fr.html
# La licence GPLv3 vous autorise à faire commerce des produits sous licence.
# Si toutefois vous parvenez à vendre l'un de mes scripts, vous êtes soit
# un vendeur de génie, soit un grippe-sou de classe mondiale ;-) .
# Créé le: samedi_23/11/2019 à 00h19
######################################################################
#

dig +nocmd "$1" any +multiline +noall +answer
