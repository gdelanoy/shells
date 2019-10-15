#!/bin/bash
# License GPL
# by rodofr Live voyager
# Modified by metalux for dynamic change wallpapers
# Display the action selector
if pgrep -f cryptkeeper;then
       kill $(pgrep -f cryptkeeper)
else
	cryptkeeper &
fi


