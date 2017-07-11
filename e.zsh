alias tmux='tmux -2'
alias sxiv='sxiv -a'
alias rtv='rtv --enable-media'
alias tty-clock='tty-clock -s -c'

gpa(){
  git add .
  git commit -m "$1"
  git push
}
