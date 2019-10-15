sudo su
cd
ln -s /mnt/donnees/nosdocs/guillaume/Dropbox Dropbox
ll
rmdir Documents/
ln -s /mnt/donnees/nosdocs/guillaume/Documents Documents
ls
ll
rmdir Modèles/
ln -s /mnt/donnees/nosdocs/guillaume/Modèles Modèles
rmdir Images/
ln -s /mnt/donnees/nosdocs/guillaume/Images Images
rmdir Téléchargements/
ln -s /mnt/donnees/nosdocs/guillaume/Téléchargements Téléchargements
ll
rmdir Public/
ln -s /mnt/donnees/nosdocs/guillaume/Public Public
rmdir Vidéos/
rmdir Musique/
ln -s /mnt/donnees/films Vidéos
ln -s /mnt/donnees/musique Musique
ll
mkdir Cloud
mkdir .bin
encfs ~/Dropbox/Documents/ ~/Cloud/
cd Cloud/Nainformatique/
ls
cd backup/
ls
cp -arf themes ~
cp -arf icons ~
cd
mv themes .themes
mv icons .icons
cd Cloud/Nainformatique/
ls
cd dpkg/
ls
cd /media/guillaume/SWISSKNIFE/Apps/linux/
cp dropbox_2015.10.28_amd64.deb /tmp/
ls
cp go-for-it_1.4.7-0~142~ubuntu16.10.1_amd64.deb /tmp/
ls
cp veracrypt-1.19-setup-* /tmp/
cp rkhunter-1.3.0.tar.gz /tmp/
cp chkrootkit.tar.gz /tmp/
cd ..
ls
cd linux/
ls
cd..
cd ..
ls
cd MesDocs/
ls
cd Scripts/
ls
mkdir /tmp/key
cp -arf ./* /tmp/key/
ssh 192.168.1.253
ping 192.168.1.253
mv Dropbox /mnt/donnees/nosdocs/guillaume/ && ln -s /mnt/donnees/nosdocs/guillaume/Dropbox Dropbox
ll
mousepad
encfs ~/Dropbox/Documents/ ~/Cloud/
mkdir /tmp/wallpp
cd Cloud/Images/Wallpapers/
cd backdrops/ 
cp -arf * /tmp/wallpp/
cd ..
cp -af *.* /tmp/wallpp/
cd MBuntu-Wallpapers/
cp -af *.* /tmp/wallpp/
cd ..
cp -arf Galaxies ~/Images/Wallpapers/
cd
mv Téléchargements/thunderbird-monterail-master.zip /tmp/
cd /tmp/
unzip thunderbird-monterail-master.zip 
mv thunderbird-monterail-master chrome
cd chrome/
mousepad userChrome.css 
cd ..
mv chrome ~/.thunderbird/nws1q1kw.default/
ll
cxds
cd
cd /dev/
ls
c ddi²
cd disk/
ls
cd by-id/
ls
ll
cd ../by-uuid/
ll
sudo su
sudo su
du -h .
docky
sudo su
notify-send coucou
notify-send "coucou, tu veux voir mon Git ?
"
cd 
cd /mnt/donnees/sauvegardes/homes/guillaume/
ls -la
notify-send $(date +%F)
cd
cd /mnt/
ls
mkdir -p syno/{IT,offsite,films,musique}
sudo mkdir -p syno/{IT,offsite,films,musique}
tree
sudo apt  install tree
tree
cd syno/
tree
cd ..
sudo mkdir -p test
sudo mkdir -p temp
cd syno/
ll
mkdir sauvegardes
sudo mkdir sauvegardes
cd ..
ll
sudo chown -R guillaume. te*
sudo chown -R guillaume. syno
ll
ll syno/
sudo apt install sshfs
sshfs guillaume@syno:/sauvegardes /mnt/syno/sauvegardes
sudo vim /etc/hosts
ping syno
sshfs guillaume@syno:/sauvegardes /mnt/syno/sauvegardes
cd syno/sauvegardes/
ls
cd homes/guillaume
ll
mkdir /tmp/mon_home
shopt -s dotglob
cp -pvarf ./* /tmp/mon_home/
ls /tmp/mon_home/
ll
cd ..
ll
cd systemes/Salon/
ll
cp -pvarf usrlocal* /tmp/
ll
rm mbr.img 
rm disques_salon-181117.txt 
cat Restaurer_MBR_\&_Partition_Table.txt 
ll
cp -pvarf root /tmp/
ll
sudo su
sudo su
cd /mnt/syno/sauvegardes/salon/homes/guillaume/
shopt -s dotglob
ll
cp -varf ./* /home/guillaume/
sshfs -o reconnect,ServerAliveInterval=15,ServerAliveCountMax=3 guillaume@syno:/sauvegardes /mnt/syno/sauvegardes -o allow_other
crontab -e
sudo su
sudo su -
