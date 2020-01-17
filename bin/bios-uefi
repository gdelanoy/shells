#!/bin/bash
######################################################################
# Nom du script : bios-uefi.sh
# Utilité: Ce script sert à vérifier si vous avez booté en mode Legacy (BIOS) ou
# sur l'UEFI, sans nécessiter de redémarrage.
# Usage: ... (le cas échéant)
# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>
# License: Ce script est sous license GPL v3.
# Veuillez consulter https://www.gnu.org/licenses/quick-guide-gplv3.fr.html
# La licence GPLv3 vous autorise à faire commerce des produits sous licence.
# Si toutefois vous parvenez à vendre l'un de mes scripts, vous êtes soit
# un vendeur de génie, soit un grippe-sou de classe mondiale ;-) .
# Créé le: vendredi_17/01/2020 à 10h44
######################################################################
#


[[ -d "/sys/firmware/efi" ]] && echo "You are booted on UEFI" || echo "You are booted on a good old BIOS"

