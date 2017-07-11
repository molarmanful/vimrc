skip_global_compinit=1
if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi

alias apl='apl --Color'
alias pacman='powerpill'
alias dmenu_run='dmenu_run -i -h 1800 -w 2880 -p "          cmd " -fn "mononoki-15" -o .8 -nb "$(~/xparse background)" -nf "$(~/xparse color1)" -sb "$(~/xparse background)" -sf "$(~/xparse foreground)" -q'
alias dmenu_colo='colo $(ls -1 ~/.colors | dmenu -i -h 1800 -w 2880 -p "         colo " -fn "mononoki-15" -o .8 -nb "$(~/xparse background)" -nf "$(~/xparse color1)" -sb "$(~/xparse background)" -sf "$(~/xparse foreground)" -q) > /dev/null &!'
alias emacs='emacs -nw'
alias fortran='fortran -ffree-form'
alias sxiv='sxiv -a'
alias rtv='rtv --enable-media'
alias tty-clock='tty-clock -s -c'

j4dmenu_run(){
  j4-dmenu-desktop --dmenu='dmenu -i -h 1800 -w 2880 -p "          app " -fn "mononoki-15" -o .8 -nb "$(~/xparse background)" -nf "$(~/xparse color1)" -sb "$(~/xparse background)" -sf "$(~/xparse foreground)" -q'
}

yt3(){
  youtube-dl --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s" $1
}

which_term(){
  perl -lpe 's/\0/ /g' /proc/$(xdotool getwindowpid $(xdotool getactivewindow))/cmdline
}

colo(){
  if [ $GDMSESSION = 'bspwm' ]; then
    if [ -f "/home/x/.colors/$1" ]; then
      BR=$(xbacklight -get)
      xbacklight -set 0
      echo $1 > ~/.curcol
      xrdb ~/.Xresources
      xrdb -merge "/home/x/.colors/$1"
      killall dunst
      pkill -USR1 -x st
      (feh --bg-fill "/home/x/Pictures/themes/$1.png" || feh --bg-fill ~/Pictures/themes/default.png) &!
      dunst -lb "$(~/xparse background)" -nb "$(~/xparse background)" -cb "$(~/xparse background)" -lf "$(~/xparse color10)" -nf "$(~/xparse color11)" -cf "$(~/xparse color9)" &!
      ~/.config/polybar/launch.sh &!
      bspc config focused_border_color "$(~/xparse foreground)"
      bspc config normal_border_color "$(~/xparse background)"
      xbacklight -set $BR
    else
      ls ~/.colors
    fi
  else
    xrdb ~/.Xresources
  fi
}

mkcmd(){
  sudo -e /usr/bin/$1
  sudo chmod +x /usr/bin/$1
}
