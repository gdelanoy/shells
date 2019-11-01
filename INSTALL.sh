#!/bin/bash
mkdir $HOME/.shells
cd .shells
sudo git submodule init
sudo git submodule update


# ln -s .shells/ps1.txt .ps1.txt
# ln -s .shells/ps2.txt .ps2.txt
# ln -s .shells/pscmd.txt .pscmd.txt

#  mv .fzf.* /tmp
#  ln -s .shells/fzf.bash .fzf.bash
#  ln -s .shells/fzf.zsh .fzf.zsh

cd $HOME

if [ -f $HOME/.zshrc ]; then
	(
		echo "Sauvegarde du zshrc existant dans ~/.shells/old/ ..."
		mv $HOME/.zshrc $HOME/.shells/old/zshrc-original-$(printf "%(%F-%T)T" -1) 
	)
fi

sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
mv $HOME/.zshrc $HOME/.shells/old/zshrc-original-$(date +%F-%T)
ln -s $HOME/.shells/zshrc .zshrc

