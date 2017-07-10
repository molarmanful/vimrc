au BufWritePost *.applescript silent !osacompile -o %:r.scpt % >/dev/null &

let &t_SI = "\e[6 q"
let &t_SR = "\e[4 q"
let &t_EI = "\e[2 q"

if exists('$TMUX')
  let &t_SI = "\ePtmux;\e" . &t_SI . "\e\\"
  let &t_SR = "\ePtmux;\e" . &t_SR . "\e\\"
  let &t_EI = "\ePtmux;\e" . &t_EI . "\e\\"
endif
