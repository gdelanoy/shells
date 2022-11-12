#!/bin/bash
#####################################################
# Nom du script : diyfetch.sh
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
# Créé le: mardi_27/09/2022 à 20h57
#####################################################
#



#!/bin/sh

#  ____ _____   ____      _       _
# |  _ \_ _\ \ / / _| ___| |_ ___| |__
# | | | | | \ V / |_ / _ \ __/ __| '_ \
    # | |_| | |  | ||  _|  __/ || (__| | | |
    # |____/___| |_||_|  \___|\__\___|_| |_|
    #
# About:
#   DIYfetch it the shell script template for writing fetch tool
#   utilizing `gum join` command (https://github.com/charmbracelet/gum#join).
#
#   This script is written in POSIX-shell for portability
#   feel free to switch it to any scripting language that you prefer.
#
# Note:
#   When copy ANSI string from random script make sure to replace "\033" and "\e" to ""
#   or wrap it in `$(printf '%b' "<ansi_string>")`.
#
# URL: https://github.com/info-mono/diyfetch


# Prepare ------------------------------------------------------------------------------------------

# You can lookup the color codes on https://wikipedia.org/wiki/ANSI_escape_code#8-bit
main_color=4

# You can add some eye candy icons with Emoji of use Nerd Fonts (https://www.nerdfonts.com).
info=$(gum style "[1;38;5;${main_color}m${USER}[0m@[1;38;5;${main_color}m$(hostname)[0m
----------------
[1;38;5;${main_color}mOS:        [0m<your_os>
[1;38;5;${main_color}mKERNEL:    [0m$(uname -sr)
[1;38;5;${main_color}mUPTIME:    [0m$(uptime -p | cut -c 4-)
[1;38;5;${main_color}mSHELL:     [0m$(basename "${SHELL}")
[1;38;5;${main_color}mEDITOR:    [0m$(basename "${EDITOR:-<your_editor>}")
[1;38;5;${main_color}mDE:        [0m<your_de>
[1;38;5;${main_color}mWM:        [0m<your_wm>
[1;38;5;${main_color}mTERMINAL:  [0m<your_terminal>")

# You can get OS arts on https://github.com/info-mono/os-ansi
# copy the raw data of the .ansi file then paste it down below.
art=$(gum style '    [34m___[0m
   [34m([0m.. [34m|[0m
      [34m([33m<> [34m|[0m
        [34m/ [0m__  [34m\[0m
         [34m( [0m/  \[34m/ |[0m
         [33m_[34m/\ [0m__)[34m/[33m_[34m)[0m
         [33m\/[34m-____[33m\/[0m')

         # You can generate colorstrip using https://github.com/info-mono/colorstrip
         color=$(gum style '[0;30m███[0;31m███[0;32m███[0;33m███[0;34m███[0;35m███[0;36m███[0;37m███[0m
         [0;1;90m███[0;1;91m███[0;1;92m███[0;1;93m███[0;1;94m███[0;1;95m███[0;1;96m███[0;1;97m███[0m')


         # Display ------------------------------------------------------------------------------------------

         # The code in this section is to display the fetch adaptively to the terminal's size.
         # If you just want a static fetch display, you can just use something like this:
         #
         #   group_info_color=$(gum join --vertical "${info}" '' "${color}")
     #   gum join --horizontal --align center '  ' "${art}" '  ' "${group_info_color}"

     terminal_size=$(stty size)
     terminal_height=${terminal_size% *}
 terminal_width=${terminal_size#* }

 # Acknowledge of how high the shell prompt is so the prompt don't push the fetch out.
 prompt_height=${PROMPT_HEIGHT:-1}

 print_test() {
    no_color=$(printf '%b' "${1}" | sed -e 's/\x1B\[[0-9;]*[JKmsu]//g')

        [ "$(printf '%s' "${no_color}" | wc --lines)" -gt $(( terminal_height - prompt_height )) ] && return 1
            [ "$(printf '%s' "${no_color}" | wc --max-line-length)" -gt "${terminal_width}" ] && return 1

            gum style --align center --width="${terminal_width}" "${1}" ''
            printf '%b' "\033[A"

                exit 0
            }


            # Paper layout
            print_test "$(gum join --vertical --align center "${art}" '' "${info}" '' "${color}")"

        # Classic layout
        group_info_color=$(gum join --vertical "${info}" '' "${color}")
        print_test "$(gum join --horizontal --align center "${art}" '  ' "${group_info_color}")"

    # Hybrid layout
    group_art_info=$(gum join --horizontal --align center "${art}" '  ' "${info}")
    print_test "$(gum join --vertical --align center "${group_art_info}" '' "${color}")"

# Other layout
print_test "$(gum join --vertical --align center "${art}" '' "${info}")"
print_test "${group_art_info}"
print_test "${group_info_color}"
print_test "${info}"

exit 1

