#!/bin/bash
#####################################################
# Nom du script : genpasswd.sh
# Utilité: Ce script sert à générer des mots de passe
# Usage: genpasswd 12 (pour un mot de passe à 12 caractères ...)
# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>
# License: Ce script est sous license GPL v3.
# Veuillez consulter https://www.gnu.org/licenses/quick-guide-gplv3.fr.html
# Créé le: samedi_19/10/2019 à 16h00
#####################################################
#
motdepasse() {
local l=$1
        [ "$l" == "" ] && l=16
        tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${l} | xargs 
        }

motdepasse

