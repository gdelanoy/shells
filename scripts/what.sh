#!/bin/bash
 #  2023 (c) mcusr -- Vim license.
  if [ $# -eq 0 ]; then
         echo "${0##*/} : I need an argument! Exiting..." ; exit 2
      fi
   file "${@: -1}" | grep ASCII >/dev/null
    if [ $? -eq 0  ] ; then
       if [ $# -eq 2 ] ; then
       batcat --style="header" --theme "$BATCATTHEME" $1  $(which $2)
       # so I can 'what -n `which what`' with 'what -n' giving me line numbers.
       else
      batcat --style="header" --theme "$BATCATTHEME" $(which $1)
     fi
  else
 [ -f "$1" ] && file $1 || echo $* | grep alias  >/dev/null &&  echo $@ | batcat --language=sh --plain --theme "$BATCATTHEME"
fi

