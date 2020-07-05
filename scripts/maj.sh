#!/bin/bash
######################################################################
# Nom du script : maj.sh
# Utilité: Ce script sert à faire des mises à jours sécurisées en une seule commande.
# Usage: ... (le cas échéant)
# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>
# License: Ce script est sous license GPL v3.
# Veuillez consulter https://www.gnu.org/licenses/quick-guide-gplv3.fr.html
# La licence GPLv3 vous autorise à faire commerce des produits sous licence.
# Si toutefois vous parvenez à vendre l'un de mes scripts, vous êtes soit
# un vendeur de génie, soit un grippe-sou de classe mondiale ;-) .
# Créé le: dimanche_05/07/2020 à 17h03
######################################################################
#
#
#

# Des Couleurs :
#
source /home/$USER/.shells/scripts/couleurs.shell
clear


sudo apt-get update && sudo apt list --upgradable && sudo apt-get upgrade --only-upgrade -y | tee /var/log/divers/packages-update-$(date +%F).log
sudo apt-get -f install
sudo apt autoclean
sudo apt autoremove


