#!/bin/bash
#####################################################
# Nom du script : sitechange.sh
# Utilité: Ce script sert à être averti chaque fois qu'une page web change.
# Usage: ... (le cas échéant)
# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>
# License: Ce script est sous license anticapitalliste.
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
# Créé le: dimanche_11/10/2020 à 14h33
#####################################################
#



#!/bin/bash

countdown()
(
IFS=:
set -- $*
secs=$(( ${1#0} * 3600 + ${2#0} * 60 + ${3#0} ))
while [ $secs -gt 0 ]
do
    sleep 1 &
    printf "\r%02d:%02d:%02d" $((secs/3600)) $(( (secs/60)%60)) $((secs%60))
    secs=$(( $secs - 1 ))
    wait
done
echo
)

while :;
do
    colordiff --ignore-space-change  <(echo "$(here goes the cURL command extracted from chrome)")  /home/lucas/Documentos/scripts/checar_diferenca_pagina/1.html # here is the page cloned to be compared in the future against the previously stored one.
    
    if [ $? != "0" ]; then
    
        notify-send "Status has changed!"
        while :;
        do
            timeout 4 cvlc /mnt/btr_pool/BTRFS/root/usr/lib/libreoffice/share/gallery/sounds/untie.wav
        done
        
    fi
    
    echo -e "\e[0;35m$(date +%H:%M)\e[m \e[1m-> Nothing yet...\e[0m"  
    echo "Trying again in: "; countdown "00:05:00"   
    
done
