# !/bin/bash

git pull
rm ./nvim.appimage
wget https://github.com/neovim/neovim/releases/download/stable/nvim.appimage

installDir=$HOME/.bin
if ! [ -d "$installDir"  ];
then
	mkdir $installDir
fi

cp ./nvim.appimage $installDir/nvim
chmod +x $installDir/nvim

if ! [[ :$PATH: == *:$installDir:*  ]];
then
	echo "export PATH=\$PATH:$installDir" >> $HOME/.bashrc
	echo "Your path was missing $installDir. The line \"export PATH=\$PATH:$installDir\" was added at the end of your bashrc."
fi

source $HOME/.bashrc

echo "Do you want to init neovim config (this operation will IRREMEDIABLY discard any previous neovim configuration) ? (y/n)"
read init

if [ "$init" = "y" ]; then
	rm -rf $HOME/.config/nvim $HOME/.local/share/nvim $HOME/.local/state/nvim
	
	git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

	mkdir $HOME/.config/nvim
	cp ./nvimConfig/* $HOME/.config/nvim
fi
