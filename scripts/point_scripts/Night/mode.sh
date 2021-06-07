#! /bin/bash
# License GPL
# by rodofr@ - Voyager Live
box=$(yad --title=Mode --window-icon="/usr/share/xfce4/voyager/p1.png" --image=/usr/share/xfce4/voyager/Voyager6.png --image-on-top --separator="" --width=320 --height=80 --list --radiolist --no-headers --directory --column="1" --column="option" --print-column 2 true "Night Mode" false "Dark Mode" false "Day Mode")

case $box in
        "Night Mode")
 	  sh -c "~/.scripts/Night/night.sh" && sh -c ~/.scripts/Night/mode.sh;;
	"Dark Mode")
 	  sh -c "~/.scripts/Night/dark.sh" && sh -c ~/.scripts/Night/mode.sh;;
        "Day Mode")
          sh -c "~/.scripts/Night/day.sh" && sh -c ~/.scripts/Night/mode.sh;;
    *)
        exit 0
esac
exit 0