#!/bin/bash

rsync -vurz /home/guillaume/.icons/* guillaume@portable:~/Documents/Nainformatique/icons/
rsync -vurz /usr/share/icons/* guillaume@portable:~/Documents/Nainformatique/icons/
rsync -vurz /home/guillaume/.cursors/* guillaume@portable:~/Documents/Nainformatique/icons/
rsync -vurz /home/guillaume/.themes/* guillaume@portable:~/Documents/Nainformatique/themes/
rsync -vurz /usr/share/themes/* guillaume@portable:~/Documents/Nainformatique/themes/
rsync -vurz /home/guillaume/.config/* guillaume@portable:~/Documents/Nainformatique/config/
rsync -vurz /home/guillaume/ansible/* guillaume@portable:~/Documents/Nainformatique/ansible/
rsync -vurz /home/guillaume/.fonts/* guillaume@portable:~/Documents/Nainformatique/fonts/
rsync -vurz /usr/share/fonts/* guillaume@portable:~/Documents/Nainformatique/fonts/
rsync -vurz --exclude=.git /home/guillaume/.shells/* guillaume@portable:~/Documents/Nainformatique/shells/
rsync -vurz --exclude=.git /home/guillaume/.vim/* guillaume@portable:~/Documents/Nainformatique/vim/
rsync -vurz --exclude=.github --exclude=.git /mnt/donnees/nosdocz/guillaume/Nainformatique/git-trucs/* guillaume@portable:~/Documents/Nainformatique/git-trucs/
rsync -vurz --exclude=.github --exclude=.git /mnt/donnees/nosdocz/guillaume/Nainformatique/Documentation/* guillaume@portable:~/Documents/Nainformatique/Documentation/
rsync -vurz --exclude=.github --exclude=.git /mnt/donnees/nosdocz/guillaume/Nainformatique/Formation/* guillaume@portable:~/Documents/Nainformatique/Formation/
rsync -vurz --exclude=.dropbox --exclude=.git /home/guillaume/Dropbox/* guillaume@portable:~/Documents/Nainformatique/Dropbox/
rsync -vurz /mnt/donnees/muzique/* guillaume@portable:/mnt/donnees/musique/
rsync -vurz /mnt/donnees/e-bookz/Howtos guillaume@portable:/mnt/donnees/e-books/
rsync -vurz /mnt/donnees/e-bookz/Nainformatique guillaume@portable:/mnt/donnees/e-books/
rsync -vurz /mnt/donnees/e-bookz/Yoga guillaume@portable:/mnt/donnees/e-books/
rsync -vurz /mnt/donnees/filmz/Temp/dlfilm-TOWATCH guillaume@portable:/mnt/donnees/films/
rsync -vurz /mnt/donnees/filmz/Temp/Documentaires/Yoga guillaume@portable:/mnt/donnees/films/
