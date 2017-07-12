#!/bin/zsh

mv ~/.zshrc ~/.zshrc_old
mv ~/.vimrc ~/.vimrc_old

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

[[ $1 == 'm' ]] && (
  echo "source ~/vimrc/mr.vim" > ~/.vimrc
  echo "source ~/vimrc/e.zsh;source ~/vimrc/me.zsh" > ~/.zshenv
  echo "source ~/vimrc/r.zsh;source ~/vimrc/mr.zsh" > ~/.zshrc
) || (
  echo "source ~/vimrc/lr.vim" > ~/.vimrc
  echo "source ~/vimrc/e.zsh;source ~/vimrc/le.zsh" > ~/.zshenv
  echo "source ~/vimrc/r.zsh;source ~/vimrc/lr.zsh" > ~/.zshrc
)

vim +PlugInstall +qa
