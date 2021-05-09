#!/bin/bash
#####################################################
# Nom du script : iptables-flush.sh
# Utilité: Ce script sert à faire pousser des fleurs
# Usage: ... (le cas échéant)
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
# Créé le: lundi_26/04/2021 à 15h40
#####################################################
#



# On remet la policy par défaut à ACCEPT
#
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT

#
# On remet les polices par défaut pour la table NAT
#
iptables -t nat -P PREROUTING ACCEPT
iptables -t nat -P POSTROUTING ACCEPT
iptables -t nat -P OUTPUT ACCEPT

#
# On vide (flush) toutes les règles existantes
#
iptables -F
iptables -t nat -F

#
# Et enfin, on efface toutes les chaînes qui ne
# sont pas à defaut dans la table filter et nat

iptables -X
iptables -t nat -X
