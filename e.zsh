alias tmux='tmux -2'
alias ls='ls -a --color'

gca(){
  git clone "https://github.com/$1"
}
gpa(){
  git add .
  git commit -m "$1"
  git push
}
exit(){
  [[ -z $TMUX ]] && builtin exit || tmux detach
}
