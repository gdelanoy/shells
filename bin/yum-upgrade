#!/bin/bash
#####################################################
# Nom du script : yum-upgrade
# Utilité: Ce script sert à faire une mise à jour propre avec yum, suivie 
# d'un nettoyage ordonné des paquets.
# Usage: ... (le cas échéant)
# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>
# License: Ce script est sous license GPL v3.
# Veuillez consulter https://www.gnu.org/licenses/quick-guide-gplv3.fr.html
# Créé le: mardi_22/10/2019 à 00h09
#####################################################
#

sudo yum upgrade && for pkg in $(package-cleanup --orphans -q); do repoquery $(rpm -q $pkg --queryformat="%{NAME}") | grep -q ".*" && echo $pkg; done | xargs sudo yum -y remove && for pkg in $(package-cleanup --leaves --all -q); do repoquery --groupmember $pkg | grep -q "@" || echo $pkg; done


