alias tmux='tmux -2'
alias ls='ls -Ga'

gpa(){
  git add .
  git commit -m "$1"
  git push
}
