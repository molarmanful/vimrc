alias tmux='tmux -2'
alias ls='ls -Ga'

gcla(){
  gh repo clone "$1"
}
gpa(){
  git add .
  git commit -m "$1"
  git push
}
exit(){
  [[ -z $TMUX ]] && builtin exit || tmux detach
}
