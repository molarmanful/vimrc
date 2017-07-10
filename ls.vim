if system('which_term')=~'konsole'
  let &t_SI = "\e]50;CursorShape=1\x7"
  let &t_SR = "\e]50;CursorShape=2\x7"
  let &t_EI = "\e]50;CursorShape=0\x7"
else
  let &t_SI = "\e[6 q"
  let &t_SR = "\e[4 q"
  let &t_EI = "\e[2 q"
endif

if exists('$TMUX')
  let &t_SI = "\ePtmux;\e" . &t_SI . "\e\\"
  let &t_SR = "\ePtmux;\e" . &t_SR . "\e\\"
  let &t_EI = "\ePtmux;\e" . &t_EI . "\e\\"
endif
