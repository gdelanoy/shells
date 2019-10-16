#!/bin/bash
# License GPL
# by rodofr Live voyager mod by Metalux
# Display the action selector

pid=$(pgrep -f indicator-netspeed-unity &)
ps -p $pid && kill $pid || indicator-netspeed-unity &



