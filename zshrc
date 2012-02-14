# zsh startup
autoload -U compinit colors
compinit
colors
setopt extendedglob 

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
function git_current_branch() {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo " git:${ref#refs/heads/}"
}
export PROMPT="%# "
export RPROMPT="%~$(git_current_branch)"

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

