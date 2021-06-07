#!/bin/bash
#
# Mounter le Tizzbird :

 -d /media/guillaume/TizzBird/films a || sshfs guillaume@syno:/usbshare1 /mnt/syno/tizzbird
 wait
 [ -d /mnt/syno/tizzbird/films ] || exit 1 | logger
#Sauvegarde :

rsync -vurcz --exclude 'Temp' --progress --no-p --size-only --delete /mnt/donnees/films/ /mnt/syno/tizzbird/films/ && echo "Sauvegarde de mes films réalisée" |tee logger

# On va en profiter pour sauvegarder aussi la musique, puisque le DD TizzBird n'est pas 
# connecté si fréquemment que ça :

rsync --progress --no-p --size-only --delete /mnt/donnees/musique/ /mnt/syno/tizzbird/musique-backup/
 && echo "Sauvegarde de la musique réalisée vers TizzBird" |tee logger


# rsync -vurz --delete --exclude 'Temp' /mnt/donnees/films/ /media/guillaume/TizzBird/films/ && echo "Sauvegarde de mes films réalisée" | logger
# rsync -vurz --delete /mnt/donnees/films/ /media/guillaume/TizzBird/films/ && echo "Sauvegarde de mes films réalisée" | logger
# rsync -vurz --delete /mnt/donnees/films/ /mnt/syno/tizzbird/films/ && echo "Sauvegarde de mes films réalisée" | logger

exit 0

