#!/bin/bash
#
# Mounter le Tizzbird :

[ -d /mnt/syno/sauvegardes/Archives ] || sshfs guillaume@syno:/sauvegardes /mnt/syno/sauvegardes
wait
[ -d /mnt/syno/sauvegardes/etc ] || exit 1

# Le répertoire de destination :
DEST=/mnt/syno/sauvegardes

# On tiendra compte aussi des fichiers cachés :

shopt -s dotglob # for considering dot files (turn on dot files)

# Sauvegardes :

# sauvegarde du rép. de root :
/bin/cp -pvarf /root/ $DEST/systemes/Salon/root/

# sauvegarde de /usr/local/bin :
/bin/cp -pvarf /usr/local/bin/ $DEST/systemes/Salon/usrlocalbin

# sauvegarde de /usr/local/bin :
/bin/cp -pvarf /usr/local/sbin/ $DEST/systemes/Salon/usrlocalsbin

# sauvegarde de /var/www :
/bin/cp -pvarf /var/www/ $DEST/systemes/Salon/varwww

# sauvegarde des bases SQL  
# N.B. : Pour les réimporter, il faudra faire ça : mysql -u root -p < MySQLdump-kivabien.sql

mysqldump -u root -pssomdettpt --all-databases --single-transaction > $DEST/systemes/Salon/SQL/MySQLdump-`date +%F`.sql

# Sauvegarde de la listes des paquets installes sur le système :

dpkg --get-selections > $DEST/systemes/Salon/Packages/Packages-`date +%F`.list
cp -R /etc/apt/sources.list* $DEST/systemes/Salon/Packages/sources.list/
apt-key exportall > $DEST/systemes/Salon/Packages/Repo-`date +%F`.keys

echo "Sauvegarde backup_divers.sh réalisée" | logger

# NOTA BENE :

# Pour restaurer, il faudra faire ça :

# apt-key add Repo.keys
# cp -R ~/sources.list* /etc/apt/
# apt-get update
# apt-get install dselect
# dselect update
# dpkg --set-selections < ~/Package.list
# apt-get dselect-upgrade -y
exit 0
