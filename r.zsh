[[ $TMUX = '' ]] && tmux new -A -s x

DISABLE_UPDATE_PROMPT=true
HYPHEN_INSENSITIVE="true"

export KEYTIMEOUT=10
export EDITOR=vim
plugins=(git npm zsh-syntax-highlighting zsh-autosuggestions z history colored-man-pages extract)
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
source ~/zsh-git-prompt/zshrc.sh

autoload -Uz compinit zcalc
if [[ -n ~/.zcompdump(#qN.mh+24) ]]; then
  compinit
else
  compinit -C
fi
_comp_options+=(globdots)

bindkey -e
precmd() { RPROMPT="" }
function zle-line-init zle-keymap-select {
  RPS1=$'${${KEYMAP/vicmd/NORMAL}/(main|viins)/} %{$fg_bold[yellow]%}%~%{$reset_color%}$(git_super_status)'
  zle reset-prompt
}
bindkey "jk" vi-cmd-mode
bindkey "kj" vi-cmd-mode
bindkey '^?' backward-delete-char
bindkey '^H' backward-delete-char
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

zle -N zle-line-init
zle -N zle-keymap-select
zle -N zle-line-finish

eval $(thefuck --alias)

ZSH_THEME_GIT_PROMPT_PREFIX=" @ "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_SEPARATOR=" "
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=241"

export PS1=$'%{$(tput cup $(tput cols))%(?.%F{cyan}.%F{red})%}$>%{\e[0m%} '
export PS2=$'   '

tput cvvis
