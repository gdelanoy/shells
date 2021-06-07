#!/bin/bash
#####################################################
# Nom du script : blacka.sh
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
# Créé le: vendredi_30/10/2020 à 15h44
#####################################################
#




function extract_session() {
    arg=$1
    [[ ! "${line:0:1}" = "[" ]] && echo Not a session block && exit 1
        [[ ! "${line: -1}" = "]" ]] && echo Not a session block && exit 1
        echo "${arg:1:-1}"
    }


function new_session(){
    sess=$1
    if [[ $(byobu has-session -t ${sess} &> /dev/null; echo $?) -eq 0 ]] 
    then
      echo Session ${sess} already exists
    else
      printf "Starting new session %s\n" "${sess}"
      byobu new-session -d -s ${sess}
    fi
}


function new_window(){
    win=$1
    printf "Window %s: %s\n" "${win_id}" "${win}"
    if [[ ${win_id} -eq 0 ]]
    then
    byobu rename-window -t ${win_id} ${win}
    else
    byobu new-window -n ${win} 
    fi
    byobu select-pane -t ${pane_id} -T ${win}
}

function new_pane(){
    pane_name=$1
    printf "\t%s\t%s %s\n" ${pane_id} "${pane_name}" "${split}"
    byobu select-window -t ${win_id}
    byobu split-window ${split}
    byobu select-pane -t ${pane_id} -T ${pane_name}
    
}

while read line
do
    if [[ "${line:0:1}" = "[" ]]
    then
    # begin SESSION
    SESSION=$(extract_session ${line})
    new_session ${SESSION}
    win_id=0
    else
    pane_id=0
    # create windows with panes
    for pane in ${line[@]}
    do
        if [[ "${pane:0:1}" = "|" ]]
        then
        # create horizontal pane
        pane=${pane: 1}
        split=-h
        else
        # create vertical pane
        split=-v
        fi
        if [[ ${pane_id} -eq 0 ]]
        then
        new_window ${pane}
        else
        new_pane ${pane}
        fi
        pane_id=$((pane_id+1))
    done
    win_id=$((win_id+1))
    printf "\n"
    fi
    
done <<EOF






sudo su -
cd scripts/hosts
./add-blacklist-to-hosts.sh

exit


