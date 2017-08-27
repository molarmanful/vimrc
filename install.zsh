#!/bin/zsh

mv ~/.zshrc ~/.zshrc_old
mv ~/.vimrc ~/.vimrc_old

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone git://github.com/olivierverdier/zsh-git-prompt
git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone git://github.com/zdharma/fast-syntax-highlighting ~/.oh-my-zsh/custom/plugins/fast-syntax-highlighting
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "source-file ~/vimrc/r.tmux;run '~/.tmux/plugins/tpm/tpm'" > ~/.tmux.conf

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
npm i -g pug-cli stylus autoprefixer-stylus electron ngrok nodemon live-server
