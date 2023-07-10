#!/bin/bash
#####################################################
# Nom du script : plonk.sh
# Utilité: Ce script sert à faire pousser des fleurs
# Usage: ... (le cas échéant)
# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>
# License: Ce script est sous license anticapitalliste.
# Veuillez consulter https://anticapitalist.software
# ANTI-CAPITALIST SOFTWARE LICENSE (v 1.4)
#
# Créé le: lundi_10/07/2023 à 20h02
#####################################################
#
set -o errexit
set -o nounset
#
# VARIABLES :
#
PATH="/$HOME/.local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/usr/bin/X11:/usr/local/sbin:/usr/local/bin"
#
# Des Couleurs :
mecho() {
  colors=(black red green yellow blue purple cyan white)
  effects=(reset bold dim italic underline blink rblink reverse)
  M=$1; M=${M//\[\/\]/\[reset\]}
    for i in "${!colors[@]}"; do
                M=${M//\[${colors[$i]}\]/\\033[0;3${i}m}
                M=${M//\[bg_${colors[$i]}\]/\\033[4${i}m}
                M=${M//\[${effects[$i]}\]/\\033[${i}m}
    done
# Exemple : mecho "A [red]rose[/] is a [bg_red]rose[/] is a [red][bold][bg_yellow]rose[/]"
# FONCTIONS :
#
LOGGER(){ (printf " $(date "+%a %d %B %T") - $USER : "; echo ${@}) >> $HOME/.local/var/log/syslog
# Exemple d un usage possible :
# LOGGER Sauvegarde effectuée.
#
###################################################
pkill plank
xrandr | grep "DVI-D-1-1 connected" && plank --display=DVI-D-1-1; rm -f ~/nohup.out
xrandr | grep "DVI-D-1-0 connected" && plank --display=DVI-D-1-0; rm -f ~/nohup.out

# pkill plank && nohup plank & ; rm -f nohup.out


