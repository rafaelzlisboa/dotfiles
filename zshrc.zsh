# oh my zsh stuff
ZSH=$HOME/.oh-my-zsh

DISABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git brew colored-man colorize emoji-clock gem ant fasd vagrant)

source $ZSH/oh-my-zsh.sh

# zsh startup
autoload -U compinit colors
compinit
colors
setopt extendedglob

# setup vcs_info
autoload -Uz vcs_info
precmd() { vcs_info }

# history
HISTFILE="$HOME/.zsh_history"
HISTSIZE="5000"
SAVEHIST="1000"
setopt APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_ALLOW_CLOBBER
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# prompts
setopt prompt_subst
export PROMPT='%{$bg[white]%}%#%{$terminfo[sgr0]%}: '
export RPROMPT='%{$bg[white]%}%{$fg[grey]%} %~%{$fg[blue]%}${vcs_info_msg_0_} %{$terminfo[sgr0]%}'

# terminal coloring stuff
export GREP_OPTIONS="--color=auto"
export CLICOLOR="auto"

export EDITOR=emacs
export LANG=en_US.UTF-8

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# very important before we leave: show fortune
fortune

