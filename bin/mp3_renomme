#!/bin/bash
######################################################################
# Nom du script : mp3renomme.sh
# Utilité: Ce script sert à renommer d'un coup les MP3 dans un rép.
# Usage: ... (le cas échéant)
# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>
# License: Ce script est sous license GPL v3.
# Veuillez consulter https://www.gnu.org/licenses/quick-guide-gplv3.fr.html
# La licence GPLv3 vous autorise à faire commerce des produits sous licence.
# Si toutefois vous parvenez à vendre l'un de mes scripts, vous êtes soit
# un vendeur de génie, soit un grippe-sou de classe mondiale ;-) .
# Créé le: dimanche_29/12/2019 à 22h22
######################################################################
#

echo "Nom de l'auteur / du groupe ? : \n"
read auteur
echo "Nom de l'album ? : \n"
read album

sudo chown -R guillaume:melomanes *.mp3
sudo chmod 644 *.mp3

rename 's/\ /_/g' *.mp3

rename 's/_-_/_/g' *.mp3

rename 's/^/$(echo "$auteur")~^~$(echo "$album")~^~/' *.mp3




