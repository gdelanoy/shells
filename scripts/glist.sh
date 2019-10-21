#!/bin/bash
#####################################################
# Nom du script : glist
# Utilité: Ce script sert à donner la liste des commits faits ce mois-ci 
# dans le répertoire en cours
# Usage: cd rép. ; glist
# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>
# License: Ce script est sous license GPL v3.
# Veuillez consulter https://www.gnu.org/licenses/quick-guide-gplv3.fr.html
# Créé le: lundi_21/10/2019 à 23h47
#####################################################
#

git log --since='last month' --author="$(git config user.name)" --oneline

