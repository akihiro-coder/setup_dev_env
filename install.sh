#!/bin/bash

# install neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage && chmod +x nvim.appimage && ln -s /home/okuda/nvim.appimage /home/okuda/.local/bin/nvim


# install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


# git clone frontier_branch and locat e init.vim to correct directory
dir_path="./.config/nvim/"
mkdir $dir_path
if [ $? -eq 0 ]; then
  wget -P $dir_path https://raw.githubusercontent.com/akihiro-coder/vimrc/frontier/init.vim  
else
  echo "init.vimを配置するディレクトリ作成に失敗しました"
fi
