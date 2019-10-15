#!/bin/bash
# License GPL
# by rodofr Live Voyager
# Display the action selector
xfconf-query -c xfce4-panel -p /panels/panel-0/autohide-behavior entier -s 0 &
xfconf-query -c xfce4-panel -p /panels/panel-0/autohide-behavior entier -s 1 &

exit 0