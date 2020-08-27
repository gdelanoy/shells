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

        echo "#!/bin/bash" > ${1}
        echo "#####################################################" >> ${1}
        echo "# Nom du script : $(basename $1)" >> ${1}
        echo "# Utilité: Ce script sert à faire pousser des fleurs" >> ${1}
        echo "# Usage: ... (le cas échéant)" >> ${1}
        echo "# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>" >> ${1}
        echo "# License: Ce script est sous license anticapitalliste." >> ${1}
        echo "# Veuillez consulter https://anticapitalist.software" >> ${1}
        echo "# ANTI-CAPITALIST SOFTWARE LICENSE (v 1.4)" >> ${1}
        echo "# Copyright © [year] [copyright holders]" >> ${1}
        echo "# This is anti-capitalist software, released for free use by individuals and organizations that do not operate by capitalist principles." >> ${1}
        echo "# Permission is hereby granted, free of charge, to any person or organization (the "User") obtaining a copy of this software and associated documentation files (the "Software"), to use, copy, modify, merge, distribute, and/or sell copies of the Software, subject to the following conditions:" >> ${1}
        echo "# " >> ${1}
        echo "# 1. The above copyright notice and this permission notice shall be included in all copies or modified versions of the Software." >> ${1}
        echo "# " >> ${1}
        echo "# 2. The User is one of the following:" >> ${1}
        echo "# a. An individual person, laboring for themselves" >> ${1}
        echo "# b. A non-profit organization" >> ${1}
        echo "# c. An educational institution" >> ${1}
        echo "# d. An organization that seeks shared profit for all of its members, and allows non-members to set the cost of their labor" >> ${1}
        echo "# " >> ${1}
        echo "# 3. If the User is an organization with owners, then all owners are workers and all workers are owners with equal equity and/or equal vote." >> ${1}
        echo "# " >> ${1}
        echo "# 4. If the User is an organization, then the User is not law enforcement or military, or working for or under either." >> ${1}
        echo "# " >> ${1}
        echo "# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT EXPRESS OR IMPLIED WARRANTY OF ANY KIND, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE." >> ${1}
        echo "# " >> ${1}
        echo "# " >> ${1}
        echo "# Créé le: $( date "+%A_%d/%m/%Y à %Hh%M")" >> ${1}
        echo "#####################################################" >> ${1}
        echo "#" >> ${1}
        echo "set -o errexit" >> ${1}
        echo "set -o nounset" >> ${1}
        echo "#" >> ${1}
        echo "# VARIABLES :" >> ${1}
        echo "#" >> ${1}
        echo '#Des Couleurs :' >> ${1}
        echo '# ' >> ${1}
        echo 'source /home/$USER/.shells/scripts/couleurs.shell' >> ${1}
        echo "#" >> ${1}
        echo "# FONCTIONS :" >> ${1}
        echo "#" >> ${1}
        echo "# source /home/$USER/.shells/scripts/functions.shell" >> ${1}
        echo "#" >> ${1}
        echo "# LE SCRIPT PROPREMENT DIT : " >> ${1}
        echo "#" >> ${1}
        echo "" >> ${1}
        echo "clear" >> ${1}
        echo "e_header $(basename ${1})" >> ${1}
        echo "" >> ${1}
        echo "" >> ${1}
        chmod 750 ${1}
        vim ${1}

