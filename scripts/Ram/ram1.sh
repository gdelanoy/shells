#!/bin/bash
# License GPL
# by rodofr@ - Voyager Live
    sed -i 's|Hidden=false|Hidden=true|g' ~/.config/autostart/blueman.desktop ~/.config/autostart/caffeine.desktop ~/.config/autostart/print-applet.desktop ~/.config/autostart/update-notifier.desktop ~/.config/autostart/xscreensaver.desktop ~/.config/autostart/Conky19.desktop
    notify-send -i ~/.scripts/Wall/logo2.png 'Services Minimim Extrem Ok - Reboot'
exit