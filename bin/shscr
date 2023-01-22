#!/bin/bash
#####################################################
# Nom du script : shscr
# Utilité: Ce script sert à créer des shells scripts pré-formatés, avec les bons droits
# Usage: ... (le cas échéant)
# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>
# License : Ce script est sous license GPL V3.
# Veuillez consulter https://www.gnu.org/licenses/quick-guide-gplv3.fr.html
# Créé le: vendredi_18/10/2019 à 22h40
#####################################################

#
# LE SCRIPT PROPREMENT DIT :
#

        echo '#!/bin/bash' > ${1}
        echo '#####################################################' >> ${1}
        echo "# Nom du script : $(basename $1)" >> ${1}
        echo '# Utilité: Ce script sert à faire pousser des fleurs' >> ${1}
        echo '# Usage: ... (le cas échéant)' >> ${1}
        echo '# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>' >> ${1}
        echo '# License: Ce script est sous license anticapitalliste.' >> ${1}
        echo '# Veuillez consulter https://anticapitalist.software' >> ${1}
        echo '# ANTI-CAPITALIST SOFTWARE LICENSE (v 1.4)' >> ${1}
        echo '#' >> ${1}
        echo "# Créé le: $( date "+%A_%d/%m/%Y à %Hh%M")" >> ${1}
        echo '#####################################################' >> ${1}
        echo '#' >> ${1}
        echo 'set -o errexit' >> ${1}
        echo 'set -o nounset' >> ${1}
        echo '#' >> ${1}
        echo '# VARIABLES :' >> ${1}
        echo '#' >> ${1}
        echo 'PATH="/$HOME/.local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/usr/bin/X11:/usr/local/sbin:/usr/local/bin"' >> ${1}
        echo "#" >> ${1}
        echo '# Des Couleurs :' >> ${1}

        echo 'mecho() {' >> ${1}
        echo '  colors=(black red green yellow blue purple cyan white)' >> ${1}
        echo '  effects=(reset bold dim italic underline blink rblink reverse)' >> ${1}
        echo '  M=$1; M=${M//\[\/\]/\[reset\]}' >> ${1}
        echo '    for i in "${!colors[@]}"; do' >> ${1}
        echo '                M=${M//\[${colors[$i]}\]/\\033[0;3${i}m}' >> ${1}
        echo '                M=${M//\[bg_${colors[$i]}\]/\\033[4${i}m}' >> ${1}
        echo '                M=${M//\[${effects[$i]}\]/\\033[${i}m}' >> ${1}
        echo '    done' >> ${1}
        echo '    printf "$M\n"' >> ${1}}
        echo '        }' >> ${1}}

        echo '# Exemple : mecho "A [red]rose[/] is a [bg_red]rose[/] is a [red][bold][bg_yellow]rose[/]"' >> ${1}

        echo '# FONCTIONS :' >> ${1}
        echo '#' >> ${1}
        echo 'LOGGER(){ (printf " $(date "+%a %d %B %T") - $USER : "; echo ${@}) >> $HOME/.local/var/log/syslog }' >> ${1}
        echo '# Exemple d un usage possible :' >> ${1}
        echo '# LOGGER Sauvegarde effectuée.' >> ${1}
        echo '#' >> ${1}
        echo '###################################################' >> ${1}
        echo "" >> ${1}
        chmod 750 ${1}
        vim ${1}

