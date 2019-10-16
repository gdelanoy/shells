#!/bin/bash

byobupoe() {
 byobu-tmux new-session -d -s POE # Crée une nouvelle session détachée
# Formation 1
 byobu-tmux rename-window 'Form1' # byobu se lance avec une seule fenêtre, on va la renommer.
 byobu split-window -v
 byobu-tmux send-keys -t 0 'ping -c 1 formation1 &>/dev/null && ssh formateur@formation1 || exit' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 0 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'ping -c 1 formation1 &>/dev/null && ssh formateur@formation1 || exit' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 1 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'sudo su -' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 1 'tail -f /var/log/messages /var/log/secure /var/log/httpd/*log /var/log/boot.log /var/log/maillog /var/log/vbox-setup.log /var/log/wpa_supplicant.log /var/log/Xorg*.log /var/log/lastlog /var/log/tallylog /var/log/vmware-vmusr.log /var/log/yum.log /var/log/anaconda/anaconda.log /var/log/anaconda/program.log /var/log/cups/access_log /var/log/sssd/ldap_child.log /var/log/sssd/sssd_pam.log /var/log/anaconda/ifcfg.log /var/log/anaconda/storage.log /var/log/cups/error_log /var/log/sssd/sssd_autofs.log /var/log/tuned/tuned.log /var/log/anaconda/journal.log /var/log/anaconda/syslog /var/log/cups/page_log /var/log/sssd/sssd_default.log /var/log/anaconda/packaging.log /var/log/audit/audit.log /var/log/sssd/sssd.log /var/log/sssd/sssd_nss.log ' 'C-m'

# Formation2
 byobu-tmux new-window
 byobu-tmux rename-window 'Form2'
 byobu split-window -v
 byobu-tmux send-keys -t 0 'ping -c 1 formation2 &>/dev/null && ssh formateur@formation2 || exit' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 0 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'ping -c 1 formation2 &>/dev/null && ssh formateur@formation2 || exit' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 1 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'sudo su -' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 1 'tail -f /var/log/messages /var/log/secure /var/log/httpd/*log /var/log/boot.log /var/log/maillog /var/log/vbox-setup.log /var/log/wpa_supplicant.log /var/log/Xorg*.log /var/log/lastlog /var/log/tallylog /var/log/vmware-vmusr.log /var/log/yum.log /var/log/anaconda/anaconda.log /var/log/anaconda/program.log /var/log/cups/access_log /var/log/sssd/ldap_child.log /var/log/sssd/sssd_pam.log /var/log/anaconda/ifcfg.log /var/log/anaconda/storage.log /var/log/cups/error_log /var/log/sssd/sssd_autofs.log /var/log/tuned/tuned.log /var/log/anaconda/journal.log /var/log/anaconda/syslog /var/log/cups/page_log /var/log/sssd/sssd_default.log /var/log/anaconda/packaging.log /var/log/audit/audit.log /var/log/sssd/sssd.log /var/log/sssd/sssd_nss.log ' 'C-m'

# Formation3
 byobu-tmux new-window
 byobu-tmux rename-window 'Form3'
 byobu split-window -v
 byobu-tmux send-keys -t 0 'ping -c 1 formation3 &>/dev/null && ssh formateur@formation3 || exit' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 0 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'ping -c 1 formation3 &>/dev/null && ssh formateur@formation3 || exit' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 1 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'sudo su -' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 1 'tail -f /var/log/messages /var/log/secure /var/log/httpd/*log /var/log/boot.log /var/log/maillog /var/log/vbox-setup.log /var/log/wpa_supplicant.log /var/log/Xorg*.log /var/log/lastlog /var/log/tallylog /var/log/vmware-vmusr.log /var/log/yum.log /var/log/anaconda/anaconda.log /var/log/anaconda/program.log /var/log/cups/access_log /var/log/sssd/ldap_child.log /var/log/sssd/sssd_pam.log /var/log/anaconda/ifcfg.log /var/log/anaconda/storage.log /var/log/cups/error_log /var/log/sssd/sssd_autofs.log /var/log/tuned/tuned.log /var/log/anaconda/journal.log /var/log/anaconda/syslog /var/log/cups/page_log /var/log/sssd/sssd_default.log /var/log/anaconda/packaging.log /var/log/audit/audit.log /var/log/sssd/sssd.log /var/log/sssd/sssd_nss.log ' 'C-m'

# Formation4
 byobu-tmux new-window
 byobu-tmux rename-window 'Form4'
 byobu split-window -v
 byobu-tmux send-keys -t 0 'ping -c 1 formation4 &>/dev/null && ssh formateur@formation4 || exit' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 0 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'ping -c 1 formation4 &>/dev/null && ssh formateur@formation4 || exit' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 1 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'sudo su -' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 1 'tail -f /var/log/messages /var/log/secure /var/log/httpd/*log /var/log/boot.log /var/log/maillog /var/log/vbox-setup.log /var/log/wpa_supplicant.log /var/log/Xorg*.log /var/log/lastlog /var/log/tallylog /var/log/vmware-vmusr.log /var/log/yum.log /var/log/anaconda/anaconda.log /var/log/anaconda/program.log /var/log/cups/access_log /var/log/sssd/ldap_child.log /var/log/sssd/sssd_pam.log /var/log/anaconda/ifcfg.log /var/log/anaconda/storage.log /var/log/cups/error_log /var/log/sssd/sssd_autofs.log /var/log/tuned/tuned.log /var/log/anaconda/journal.log /var/log/anaconda/syslog /var/log/cups/page_log /var/log/sssd/sssd_default.log /var/log/anaconda/packaging.log /var/log/audit/audit.log /var/log/sssd/sssd.log /var/log/sssd/sssd_nss.log ' 'C-m'

# Formation5
 byobu-tmux new-window
 byobu-tmux rename-window 'Form5'
 byobu split-window -v
 byobu-tmux send-keys -t 0 'ping -c 1 formation5 &>/dev/null && ssh formateur@formation5 || exit' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 0 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'ping -c 1 formation5 &>/dev/null && ssh formateur@formation5 || exit' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 1 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'sudo su' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 1 'tail -f /var/log/messages /var/log/secure /var/log/httpd/*log /var/log/boot.log /var/log/maillog /var/log/vbox-setup.log /var/log/wpa_supplicant.log /var/log/Xorg*.log /var/log/lastlog /var/log/tallylog /var/log/vmware-vmusr.log /var/log/yum.log /var/log/anaconda/anaconda.log /var/log/anaconda/program.log /var/log/cups/access_log /var/log/sssd/ldap_child.log /var/log/sssd/sssd_pam.log /var/log/anaconda/ifcfg.log /var/log/anaconda/storage.log /var/log/cups/error_log /var/log/sssd/sssd_autofs.log /var/log/tuned/tuned.log /var/log/anaconda/journal.log /var/log/anaconda/syslog /var/log/cups/page_log /var/log/sssd/sssd_default.log /var/log/anaconda/packaging.log /var/log/audit/audit.log /var/log/sssd/sssd.log /var/log/sssd/sssd_nss.log ' 'C-m'

# Formation6
 byobu-tmux new-window
 byobu-tmux rename-window 'Form6'
 byobu split-window -v
 byobu-tmux send-keys -t 0 'ping -c 1 formation6 &>/dev/null && ssh formateur@formation6 || exit' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 0 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'ping -c 1 formation6 &>/dev/null && ssh formateur@formation6 || exit' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 1 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'sudo su -' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 1 'tail -f /var/log/messages /var/log/secure /var/log/httpd/*log /var/log/boot.log /var/log/maillog /var/log/vbox-setup.log /var/log/wpa_supplicant.log /var/log/Xorg*.log /var/log/lastlog /var/log/tallylog /var/log/vmware-vmusr.log /var/log/yum.log /var/log/anaconda/anaconda.log /var/log/anaconda/program.log /var/log/cups/access_log /var/log/sssd/ldap_child.log /var/log/sssd/sssd_pam.log /var/log/anaconda/ifcfg.log /var/log/anaconda/storage.log /var/log/cups/error_log /var/log/sssd/sssd_autofs.log /var/log/tuned/tuned.log /var/log/anaconda/journal.log /var/log/anaconda/syslog /var/log/cups/page_log /var/log/sssd/sssd_default.log /var/log/anaconda/packaging.log /var/log/audit/audit.log /var/log/sssd/sssd.log /var/log/sssd/sssd_nss.log ' 'C-m'

# Formation7
 byobu-tmux new-window
 byobu-tmux rename-window 'Form7'
 byobu split-window -v
 byobu-tmux send-keys -t 0 'ping -c 1 formation7 &>/dev/null && ssh formateur@formation7 || exit' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 0 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'ping -c 1 formation7 &>/dev/null && ssh formateur@formation7 || exit' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 1 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'sudo su -' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 1 'tail -f /var/log/messages /var/log/secure /var/log/httpd/*log /var/log/boot.log /var/log/maillog /var/log/vbox-setup.log /var/log/wpa_supplicant.log /var/log/Xorg*.log /var/log/lastlog /var/log/tallylog /var/log/vmware-vmusr.log /var/log/yum.log /var/log/anaconda/anaconda.log /var/log/anaconda/program.log /var/log/cups/access_log /var/log/sssd/ldap_child.log /var/log/sssd/sssd_pam.log /var/log/anaconda/ifcfg.log /var/log/anaconda/storage.log /var/log/cups/error_log /var/log/sssd/sssd_autofs.log /var/log/tuned/tuned.log /var/log/anaconda/journal.log /var/log/anaconda/syslog /var/log/cups/page_log /var/log/sssd/sssd_default.log /var/log/anaconda/packaging.log /var/log/audit/audit.log /var/log/sssd/sssd.log /var/log/sssd/sssd_nss.log ' 'C-m'

# Formation8
 byobu-tmux new-window
 byobu-tmux rename-window 'Form8'
 byobu split-window -v
 byobu-tmux send-keys -t 0 'ping -c 1 formation8 &>/dev/null && ssh formateur@formation8 || exit' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 0 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'ping -c 1 formation8 &>/dev/null && ssh formateur@formation8 || exit' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 1 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'sudo su -' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 1 'tail -f /var/log/messages /var/log/secure /var/log/httpd/*log /var/log/boot.log /var/log/maillog /var/log/vbox-setup.log /var/log/wpa_supplicant.log /var/log/Xorg*.log /var/log/lastlog /var/log/tallylog /var/log/vmware-vmusr.log /var/log/yum.log /var/log/anaconda/anaconda.log /var/log/anaconda/program.log /var/log/cups/access_log /var/log/sssd/ldap_child.log /var/log/sssd/sssd_pam.log /var/log/anaconda/ifcfg.log /var/log/anaconda/storage.log /var/log/cups/error_log /var/log/sssd/sssd_autofs.log /var/log/tuned/tuned.log /var/log/anaconda/journal.log /var/log/anaconda/syslog /var/log/cups/page_log /var/log/sssd/sssd_default.log /var/log/anaconda/packaging.log /var/log/audit/audit.log /var/log/sssd/sssd.log /var/log/sssd/sssd_nss.log ' 'C-m'

# Formation10
 byobu-tmux new-window
 byobu-tmux rename-window 'Form9'
 byobu split-window -v
 byobu-tmux send-keys -t 0 'ping -c 1 formation9 &>/dev/null && ssh formateur@formation9 || exit' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 0 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'ping -c 1 formation9 &>/dev/null && ssh formateur@formation9 || exit' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 1 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'sudo su -' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 1 'tail -f /var/log/messages /var/log/secure /var/log/httpd/*log /var/log/boot.log /var/log/maillog /var/log/vbox-setup.log /var/log/wpa_supplicant.log /var/log/Xorg*.log /var/log/lastlog /var/log/tallylog /var/log/vmware-vmusr.log /var/log/yum.log /var/log/anaconda/anaconda.log /var/log/anaconda/program.log /var/log/cups/access_log /var/log/sssd/ldap_child.log /var/log/sssd/sssd_pam.log /var/log/anaconda/ifcfg.log /var/log/anaconda/storage.log /var/log/cups/error_log /var/log/sssd/sssd_autofs.log /var/log/tuned/tuned.log /var/log/anaconda/journal.log /var/log/anaconda/syslog /var/log/cups/page_log /var/log/sssd/sssd_default.log /var/log/anaconda/packaging.log /var/log/audit/audit.log /var/log/sssd/sssd.log /var/log/sssd/sssd_nss.log ' 'C-m'

# Formation10
 byobu-tmux new-window
 byobu-tmux rename-window 'Form10'
 byobu split-window -v
 byobu-tmux send-keys -t 0 'ping -c 1 formation10 &>/dev/null && ssh formateur@formation10 || exit' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 0 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'ping -c 1 formation &>/dev/null && ssh formateur@formation10 || exit' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 1 'clear' 'C-m'
 byobu-tmux send-keys -t 1 'sudo su -' 'C-m'
 sleep 1
 byobu-tmux send-keys -t 1 'tail -f /var/log/messages /var/log/secure /var/log/httpd/*log /var/log/boot.log /var/log/maillog /var/log/vbox-setup.log /var/log/wpa_supplicant.log /var/log/Xorg*.log /var/log/lastlog /var/log/tallylog /var/log/vmware-vmusr.log /var/log/yum.log /var/log/anaconda/anaconda.log /var/log/anaconda/program.log /var/log/cups/access_log /var/log/sssd/ldap_child.log /var/log/sssd/sssd_pam.log /var/log/anaconda/ifcfg.log /var/log/anaconda/storage.log /var/log/cups/error_log /var/log/sssd/sssd_autofs.log /var/log/tuned/tuned.log /var/log/anaconda/journal.log /var/log/anaconda/syslog /var/log/cups/page_log /var/log/sssd/sssd_default.log /var/log/anaconda/packaging.log /var/log/audit/audit.log /var/log/sssd/sssd.log /var/log/sssd/sssd_nss.log ' 'C-m'

# Mon poste :
 byobu-tmux new-window
 byobu-tmux rename-window 'Local'  
 byobu split-window -v
 byobu-tmux send-keys -t 0 'ssh formateur@localhost' 'C-m'
 byobu-tmux send-keys -t 0 'cd ~/ansible' 'C-m'
 byobu-tmux send-keys -t 0 'clear' 'C-m'
 byobu-tmux send-keys -t 0 'nmap -sP 192.168.20.0/24' 'C-m'
 byobu-tmux send-keys -t 1 'sudo su' 'C-m'
 byobu-tmux send-keys -t 1 'tail -f /var/log/*log /var/log/*/*log | ccze' 'C-m'
}

# Et on lance le tout :
byobu list-sessions | grep POE && byobu-tmux attach -t POE || ( byobupoe; byobu-tmux attach -t POE )

exit

