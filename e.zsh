alias tmux='tmux -2'

gpa(){
  git add .
  git commit -m "$1"
  git push
}
