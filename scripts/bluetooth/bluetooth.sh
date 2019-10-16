#!/bin/bash
# Modified by Rodofr@Voyager Live

SWITCH=""
PID=""
# Comment out if your is toshiba laptop
# TOSHSET=""

SWITCH=$(zenity --list --width=300 --height=220 --text "Please Select Bluetooth Option:" --radiolist  --column " * " --column "Option" TRUE "On" FALSE "Off" FALSE "Restart" FALSE "Status");
echo $SWITCH

if [ $SWITCH = "On" ]; then
	SWITCH="start"	
	# Comment out if your is toshiba laptop
	# TOSHSET="on"
	bluetooth-applet &			
elif [ $SWITCH = "Off" ]; then
	SWITCH="stop"		
	PID=$(pidof bluetooth-applet)
	kill $PID
elif [ $SWITCH = "Restart" ]; then
	# Comment out if your is toshiba laptop
	# TOSHSET="on"
	SWITCH="restart"
	PID=$(pidof bluetooth-applet)
	kill $PID
	bluetooth-applet &
else 
	#"Unknown parameter. Quitting."
	SWITCH="status"
fi

## Initialization
STATUS=`gksudo service bluetooth $SWITCH`
zenity --info --text "$STATUS"
# Comment out if your is toshiba laptop
# gksudo toshset -bluetooth $TOSHSET