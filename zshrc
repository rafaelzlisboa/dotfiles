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
export PROMPT="%# "
export RPROMPT='%~ ${vcs_info_msg_0_}'

# terminal coloring stuff
export GREP_OPTIONS="--color=auto"
export CLICOLOR="auto"

# aliases
alias ls="ls -Gh"
alias ll="ls -la"
alias gs="git status"

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# very important before we leave: show fortune
fortune

