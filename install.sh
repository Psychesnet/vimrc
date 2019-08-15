#!/bin/sh

if [ "$(uname)" = "Darwin" ]; then
  echo "This is mac os x"
else
  echo "This maybe be Linux"
  sudo apt-get install build-essentail vim net-tools git openssh-server cmake trace-cmd silversearcher-ag kernelshark
fi

ln -sf $(pwd)/.vimrc ~/.vimrc
ln -sf $(pwd)/.inputrc ~/.inputrc
ln -sf $(pwd)/.bash_profile ~/.bash_profile
ln -sf $(pwd)/.kermrc ~/.kermrc
ln -sf $(pwd)/.gitconfig ~/.gitconfig
# folder
ln -sf $(pwd)/.vim ~/
ln -sf $(pwd)/.ssh ~/
ln -sf $(pwd)/.config ~/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -u ~/.vimrc +BundleInstall! +BundleClean +qall
sh ~/.vim/bundle/YouCompleteMe/install.sh --clang-completer

if [ "$(uname)" = "Darwin" ]; then
    sed -i "" "s/\'<Tab>\', //g" ~/.vim/bundle/YouCompleteMe/plugin/youcompleteme.vim
    sed -i "" "s/\'<S-Tab>\', //g" ~/.vim/bundle/YouCompleteMe/plugin/youcompleteme.vim
else
    sed -i "s/\'<Tab>\', //g" ~/.vim/bundle/YouCompleteMe/plugin/youcompleteme.vim
    sed -i "s/\'<S-Tab>\', //g" ~/.vim/bundle/YouCompleteMe/plugin/youcompleteme.vim
fi

[ "$(which ag)" == "" ] && echo "YOU NEED TO INSTALL AG FIRST!!!!"
