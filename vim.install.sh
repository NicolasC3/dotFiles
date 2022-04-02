#/bin/bash

mv ~/.vim ~/.vim.old
mv ~/.vimrc ~/.vimrc.old

cp .vimrc ~/.vimrc
mkdir -p ~/.vim
cd ~/.vim
mkdir pack
cd pack

mkdir -p tpope/start
cd tpope/start

git clone https://tpope.io/vim/commentary.git
vim -u NONE -c "helptags commentary/doc" -c q
git clone https://tpope.io/vim/sensible.git
git clone https://tpope.io/vim/surround.git
vim -u NONE -c "helptags surround/doc" -c q
git clone https://github.com/tpope/vim-vinegar.git

cd ../..


mkdir -p syntastic/start/
cd syntastic/start/
git clone https://github.com/vim-syntastic/syntastic.git

cd ../..


mkdir -p ycm/start
cd ycm/start

git clone https://github.com/ycm-core/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive
./install.py --clang-completer --clangd-completer --cs-completer --rust-completer --java-completer --ts-completer
