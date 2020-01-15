#!/bin/bash
shopt -s dotglob

# Script pour la maintenance du système.
#
# Droits dans /mnt/donnees :

cd /mnt/donnees
chown -R guillaume:usagers cloud
chmod 750 cloud
chmod g+s cloud

chown -R guillaume:famille downloads
chmod 770 downloads
chmod g+s downloads

chown -R guillaume:cinephiles films
chmod 750 films
chmod g+s films
find films/ -type f -exec chmod 640 {} \; 
find films/ -type d -exec chmod 755 {} \; 


chown -R guillaume:famille images
chmod 750 images
chmod g+s images
cd images
chown -R aureo:famille aureo
find aureo/ -type f -exec chmod 644 {} \; 
find aureo/ -type d -exec chmod 755 {} \; 
find wallpapers/ -type f -exec chmod 644 {} \; 
find wallpapers/ -type d -exec chmod 755 {} \; 
chmod 750 guillaume
find guillaume/ -type f -exec chmod 640 {} \; 
find guillaume/ -type d -exec chmod 750 {} \; 

cd /mnt/donnees

chown -R guillaume:melomanes musique
chmod 750 musique
chmod g+s musique
cd musique
find . -type f -exec chmod 640 {} \; 
find . -type d -exec chmod 755 {} \; 

cd /mnt/donnees

chown -R guillaume:famille nosdocs
chmod 770 nosdocs
chmod g+s nosdocs
cd nosdocs
chown -R aureo:famille aureo
chmod 750 aureo
find aureo/ -type f -exec chmod 644 {} \; 
find aureo/ -type d -exec chmod 755 {} \; 
chmod 700 guillaume
cd guillaume
find . -type f -exec chmod 640 {} \; 
find . -type d -exec chmod 750 {} \; 

cd /mnt/donnees

chown -R guillaume:guillaume .safe
chmod 700 .safe
chmod g+s .safe
cd .safe
find . -type f -exec chmod 600 {} \; 
find . -type d -exec chmod 700 {} \; 

cd /mnt/donnees

chown -R guillaume:adm sauvegardes
chmod 770 sauvegardes
chmod g+s sauvegardes
cd sauvegardes
find . -type f -exec chmod 660 {} \; 
find . -type d -exec chmod 750 {} \; 

