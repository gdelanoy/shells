#!/bin/bash
# License GPL
# by rodofr Live voyager
# Display the action selector
	xfconf-query -c xsettings -p /Net/IconThemeName -s Voyager-Orange-Dark
	xfconf-query -c xsettings -p /Net/ThemeName -s Voyager-OrangeGrey-Dark
	xfconf-query -c xfwm4 -p /general/theme -s Voyager-OrangeGrey-Dark
	xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/last-image -s /usr/share/xfce4/backdrops/xubuntu-wallpaper.png
	xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace1/last-image -s /usr/share/xfce4/backdrops/xubuntu-wallpaper.png
	xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace2/last-image -s /usr/share/xfce4/backdrops/xubuntu-wallpaper.png
	xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace3/last-image -s /usr/share/xfce4/backdrops/xubuntu-wallpaper.png
notify-send -i /usr/share/xfce4/voyager/Voyager4.png 'Day Mode'
exit 0

