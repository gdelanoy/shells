#!/bin/bash
#
# DéDé, es-tu là ?
#
[ -d /media/guillaume/Backup_Perso/scripts ] || exit 1
#
# Sauvegardes Perso :
#
# Téléchargements : 
#
rsync -vurz /mnt/donnees/downloads/ /media/guillaume/Backup_Perso/downloads/
#
# Musique :
#
rsync -vurz --delete /mnt/donnees/musique/ /media/guillaume/Backup_Perso/musique/
#
# Cloud : 
#
rsync -vurz --delete "/mnt/donnees/cloud/Mega/MEGAsync/Cloud Drive/" /media/guillaume/Backup_Perso/cloud/Mega/
#
# La partie sécurisée est recopiée en clair, à tout hasard :
#
runuser -l guillaume -c "rsync -vurz --delete /home/guillaume/safe-in-cloud/ /media/guillaume/Backup_Perso/cloud/Safe-in-Cloud/"
#
# Les images :
#
rsync -vurz --delete /mnt/donnees/images/ /media/guillaume/Backup_Perso/images/
#
# Les e-Books :
#
rsync -vurz --delete /mnt/donnees/e-Books/ /media/guillaume/Backup_Perso/e-Books/
#
# Nos Documents :
#
rsync -vurz --delete /mnt/donnees/nosdocs/ /media/guillaume/Backup_Perso/nosdocs/
#
#
# Sauvegardes spéciales :
# 
# ETC : 
#
cd /media/guillaume/Backup_Perso/sauvegardes/etc/
tar zcpvf $(hostname)-etc-$(date +%F).tgz /etc
#
# ROOT :
# 
cd /media/guillaume/Backup_Perso/sauvegardes/root
tar zcpvf $(hostname)-root-$(date +%F).tgz /root
#
# HOMES :
#
cd /media/guillaume/Backup_Perso/sauvegardes/homes
tar zcpvf $(hostname)-homes-$(date +%F).tgz /home
#
# Serveur Ouaibe :
#
cd /media/guillaume/Backup_Perso/sauvegardes/ouaibe
tar zcpvf $(hostname)-www-$(date +%F).tgz /var/www

# sauvegarde des bases SQL
# N.B. : Pour les réimporter, il faudra faire ça : mysql -u root -p < MySQLdump-kivabien.sql
systemctl start mariadb
mysqldump -u root -pssomdettpt --all-databases --single-transaction > /media/guillaume/Backup_Perso/sauvegardes/Applis/SQL/MySQL-$(date +%F).sql

# Sauvegarde de la listes des paquets installes sur le système :

dpkg --get-selections > /media/guillaume/Backup_Perso/sauvegardes/Applis/deb/Packages-$(date +%F).list
cp -R /etc/apt/sources.list* /media/guillaume/Backup_Perso/sauvegardes/Applis/deb/sources-list/
apt-key exportall > /media/guillaume/Backup_Perso/sauvegardes/Applis/deb/Repo-`date +%F`.keys

# NOTA BENE :

# Pour restaurer, il faudra faire ça :

# apt-key add Repo.keys
# cp -R ~/sources.list* /etc/apt/
# apt-get update
# apt-get install dselect
# dselect update
# dpkg --set-selections < ~/Package.list
# apt-get dselect-upgrade -y

#
# Adapter les droits pour que mes sauvegardes soient toujours lisibles : 
# 
chown -R guillaume. /media/guillaume/Backup_Perso/

