alias tmux='tmux -2'
alias ls='ls -Ga'

gca(){
  git clone https://github.com/$1
}
gpa(){
  git add .
  git commit -m "$1"
  git push
}
