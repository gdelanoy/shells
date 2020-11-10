#!/bin/bash
#####################################################
# Nom du script : rootssh.sh
# Utilité: Ce script sert à envoyer une alarme dans l'interface graphique de celui
# qui utilise localement ce système si une élévation root (su ou sudo) est réalisée
# depuis une session initiée en ssh.
# Usage: Appeler ce script au début du .bashrc / .zshrc de root !
# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>
# License: Ce script est sous license anticapitaliste.
# Veuillez consulter https://anticapitalist.software
# ANTI-CAPITALIST SOFTWARE LICENSE (v 1.4)
# Copyright © [year] [copyright holders]
# This is anti-capitalist software, released for free use by individuals and organizations
# that do not operate by capitalist principles.
# Permission is hereby granted, free of charge, to any person or organization (the User)
# obtaining a copy of this software and associated documentation files (the Software), to use, copy,
# modify, merge, distribute, and/or sell copies of the Software, subject to the following conditions:
#
# 1. The above copyright notice and this permission notice shall be included in all copies or
# modified versions of the Software.
#
# 2. The User is one of the following:
# a. An individual person, laboring for themselves
# b. A non-profit organization
# c. An educational institution
# d. An organization that seeks shared profit for all of its members, and allows non-members
# to set the cost of their labor
#
# 3. If the User is an organization with owners, then all owners are workers and all workers
# are owners with equal equity and/or equal vote.
#
# 4. If the User is an organization, then the User is not law enforcement or military,
# or working for or under either.
#
# THE SOFTWARE IS PROVIDED AS IS, WITHOUT EXPRESS OR IMPLIED WARRANTY OF ANY KIND,
# INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE
# AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
# OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#
#
# Créé le: mardi_10/11/2020 à 16h22
#####################################################
#



if pstree -p | egrep --quiet --extended-regexp ".*sshd.*\($$\)"; then
#          echo "I am remote."
            sudo -u guillaume DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus notify-send -t 90000 -i terminal  'ALARME ' "$(echo "Un accès à un shell Root a été effectué sur $(hostname) le $(date "+%A %d %B %Y") à $(date "+%H heures %M") depuis le compte $(who am i | cut -d' ' -f1) .")"
    else
              echo ""
      fi


