#!/bin/bash
# [ -d /home/guillaume/safe-in-cloud/Tirelire ] && ( yes  | cp -fa /home/guillaume/safe-in-cloud/Tirelire/tirelire /tmp/ && sudo veracrypt --password=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX --protect-hidden=no --mount /tmp/tirelire /home/guillaume/safe-in-tirelire/ ) || echo "safe-in-cloud n'est pas monté !"
[ -d /home/guillaume/safe-in-cloud/Tirelire ] && ( yes  | cp -fa /home/guillaume/safe-in-cloud/Tirelire/tirelire /tmp/ && sudo veracrypt --password=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX --protect-hidden=no --mount /tmp/tirelire /home/guillaume/safe-in-cloud/safe-in-tirelire/ ) || echo "safe-in-cloud n'est pas monté !"
# [ -d /home/guillaume/safe-in-cloud/Tirelire ] && ( sudo veracrypt --password=ssomdettpttrlsidlvuaoelvauplpaals --protect-hidden=no --mount /home/guillaume/safe-in-cloud/Tirelire/T1r3l1r3 /home/guillaume/safe-in-safe/ ) || echo "safe-in-cloud n'est pas monté !"
df -h | grep safe | lolcat
