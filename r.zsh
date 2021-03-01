if [ "$TMUX" = "" ]; then tmux a || tmux; fi

DISABLE_UPDATE_PROMPT=true
HYPHEN_INSENSITIVE="true"
unsetopt BG_NICE

export KEYTIMEOUT=10
export EDITOR=nvim
export PATH=$HOME/bin:$HOME/.local/bin:$PATH
plugins=(common-aliases git fast-syntax-highlighting zsh-autosuggestions z history colored-man-pages archlinux extract)
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
source ~/zsh-git-prompt/zshrc.sh

alias v='nvim'
alias vim='nvim'
alias j-note='jupyter-notebook --no-browser'

autoload -Uz compinit zcalc zmv
if [[ -n ~/.zcompdump(#qN.mh+24) ]]; then
  compinit
else
  compinit -C
fi
_comp_options+=(globdots)

bindkey -e
precmd() { RPROMPT="" }

function virtualenv_info(){
  if [[ -n "$VIRTUAL_ENV" ]]; then
    venv="${VIRTUAL_ENV##*/}"
  else
    venv=''
  fi
  [[ -n "$venv" ]] && echo "(V:%{$fg_bold[yellow]%}$venv%{$reset_color%})"
}

function zle-line-init zle-keymap-select {
  RPS1=$'${${KEYMAP/vicmd/NORMAL}/(main|viins)/} %{$fg_bold[yellow]%}%~%{$reset_color%}$(virtualenv_info)$(git_super_status)'
  zle reset-prompt
}

bindkey "jk" vi-cmd-mode
bindkey "kj" vi-cmd-mode
bindkey '^?' backward-delete-char
bindkey '^H' backward-delete-char
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=241"

zle -N zle-line-init
zle -N zle-keymap-select
zle -N zle-line-finish

eval $(thefuck --alias)

ZSH_THEME_GIT_PROMPT_PREFIX=" @ "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_SEPARATOR=" "

export VIRTUAL_ENV_DISABLE_PROMPT=1
export PS1=$'%{$(tput cup $(tput cols))%B%(?.%F{cyan}.%F{red})%}›>%{$reset_color%} '
export PS2=$'   '

eval "$(direnv hook zsh)"

clear
tput cvvis
