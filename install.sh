#!/bin/sh

CWD=`pwd`
echo $CWD

rm -rf $HOME/{.vimrc,.vim}
mkdir -p $HOME/.vim/colors

wget https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim -P $HOME/.vim/colors
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

ln -s $CWD/vimrc $HOME/.vimrc

# installing vim plugins may take long time
vim +PluginInstall +qall

wget https://raw.githubusercontent.com/ashanaakh/hyperzsh/master/hyperzsh.zsh-theme -P $CWD/oh-my-zsh/themes

rm -rf $HOME/.oh-my-zsh
ln -s $CWD/oh-my-zsh $HOME/.oh-my-zsh

rm $HOME/.gitconfig
ln -s $CWD/gitconfig $HOME/.gitconfig

rm $HOME/.zshrc
ln -s $CWD/zshrc $HOME/.zshrc
