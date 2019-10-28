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
set -o errexit
set -o nounset
#
# VARIABLES :
#
#Des Couleurs :

source /home/guillaume/.shells/scripts/couleurs.shell

# FONCTIONS :
#
# source /etc/skel/.scripts/functions.sh
#
# LE SCRIPT PROPREMENT DIT : 
#

        echo "#!/bin/bash" > ${1}
        echo "#####################################################" >> ${1}
        echo "# Nom du script : $(basename $1)" >> ${1}
        echo "# Utilité: Ce script sert à faire pousser des fleurs" >> ${1}
        echo "# Usage: ... (le cas échéant)" >> ${1}
        echo "# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>" >> ${1}
        echo "# License: Ce script est sous license GPL v3." >> ${1}
        echo "# Veuillez consulter https://www.gnu.org/licenses/quick-guide-gplv3.fr.html" >> ${1}
        echo "# La licence GPLv3 vous autorise à faire commerce des produits sous licence." >> ${1}
        echo "# Si toutefois vous y parvenez avec l'un de mes scripts, vous êtes soit " >> ${1}
        echo "# un vendeur de génie, soit un grippe-sou de classe mondiale ! " >> ${1}
        echo "# Créé le: $( date "+%A_%d/%m/%Y à %Hh%M")" >> ${1}
        echo "#####################################################" >> ${1}
        echo "#" >> ${1}
        echo "set -o errexit" >> ${1}
        echo "set -o nounset" >> ${1}
        echo "#" >> ${1}
        echo "# VARIABLES :" >> ${1}
        echo "#" >> ${1}
        echo '#Des Couleurs ' >> ${1}
        echo '# ' >> ${1}
        echo 'source /home/guillaume/.shells/scripts/couleurs.shell' >> ${1}
        echo "#" >> ${1}
        echo "# FONCTIONS :" >> ${1}
        echo "#" >> ${1}
        echo "# source /etc/skel/.scripts/functions.sh" >> ${1}
        echo "#" >> ${1}
        echo "# LE SCRIPT PROPREMENT DIT : " >> ${1}
        echo "#" >> ${1}
        echo "" >> ${1}
        echo "e_header $(basename ${1})" >> ${1}
        echo "" >> ${1}
        echo "" >> ${1}
        chmod 750 ${1}
        vim ${1}

