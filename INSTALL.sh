#!/bin/bash

# ln -s .shells/ps1.txt .ps1.txt
#   670  ln -s .shells/ps2.txt .ps2.txt
#   671  ln -s .shells/pscmd.txt .pscmd.txt

#  mv .fzf.* /tmp
#  673  ln -s .shells/fzf.bash .fzf.bash
#  674  ln -s .shells/fzf.zsh .fzf.zsh
cd /home/$USER/
[ -f /home/$USER/.zshrc ] && ( echo "Sauvegarde du zshrc existant dans ~/.shells/old/ ..."; mv /home/$USER/.zshrc /home/$USER/.shells/old/zshrc-original-$(date +%F-%T))
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
mv /home/$USER/.zshrc /home/$USER/.shells/old/zshrc-original-$(date +%F-%T)
ln -s /home/$USER/.shells/zshrc .zshrc

