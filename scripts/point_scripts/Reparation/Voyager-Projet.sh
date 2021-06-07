#! /bin/bash
box=$(yad --title=Reparation --window-icon="/usr/share/xfce4/voyager/p1.png" --image="/usr/share/xfce4/voyager/Voyager0.png" --image-on-top --separator="" --width=320 --height=370 --list --radiolist --no-headers --column="1" --column="option" --print-column 2 true "Boot Repair" false "Os Uninstaller" false "Reset Windows Xfce" false "Reset Panel Xfce" false "Purge Cache Pulse Audio" false "Purge Cache Moc Audio" false "Purge Restore defaut Impulse" false "Purge Cache Kodi Media Center" false "Purge Cache Home" false "Purge Cache Sessions" false "Sensors-detect Temp" false "Restore Lost Data")

case $box in
       "Boot Repair")
	  boot-repair;;
	"Os Uninstaller")
	  os-uninstaller;;
       "Reset Windows Xfce")
	  exec xfwm4 --replace 
zenity --info --title='Voyager Projet' \
          --text="Fenêtres regénérées";;
       "Reset Panel Xfce")
          xfce4-panel --restart
zenity --info --title='Voyager Projet' \
          --text="Panel regénéré";;
       "Purge Cache Pulse Audio")
          sh -c ~/.scripts/Reparation/pulse.sh
zenity --info --title='Voyager Projet' \
          --text="Purge Cache Pulse Audio Ok";;
	"Purge Cache Moc Audio")
	  sh -c ~/.scripts/Reparation/moc.sh
zenity --info --title='Voyager Projet' \
          --text="Purge Cache Moc Audio Ok";;
	"Purge Restore defaut Impulse")
	  sh -c ~/.scripts/Reparation/Impulse.sh
zenity --info --title='Voyager Projet' \
          --text="Purge Restore defaut Impulse Ok";;
	"Purge Cache Home")
	  sh -c ~/.scripts/Reparation/cache.sh
zenity --info --title='Voyager Projet' \
          --text="Purge Cache Home OK";;
	"Purge Cache Kodi Media Center")
	  sh -c ~/.scripts/Reparation/kodi.sh
zenity --info --title='Voyager Projet' \
          --text="Purge Cache Kodi OK";;	
	"Purge Cache Sessions")
	 sh -c ~/.scripts/Reparation/supprimersessionxfce4.sh
zenity --info --title='Voyager Projet' \
          --text="Purge Cache Sessions OK";; 
	"Sensors-detect Temp")
          xfce4-terminal -x sh -c "sudo sensors-detect" &
zenity --info --title='Voyager Projet' \
          --text="Répondre oui/Yes";;
	"Restore Lost Data")
	  xfce4-terminal -x sh -c "sudo photorec" &
zenity --info --title='Photorec' \
          --text="Attention - Aller sur Photorec ubuntu http://doc.ubuntu-fr.org/photorec";;
    *)
        exit 0
esac
exit 0
