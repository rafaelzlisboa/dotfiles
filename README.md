# dotfiles

(requirements: brew)

inside the dotfiles folder:
```
brew tap Homebrew/bundle
brew bundle
```

install oh-my-zsh by cloning it to .oh-my-zsh

add to `~/.zshrc`:
```
source "$HOME/dotfiles/zshrc.zsh"
source "$HOME/dotfiles/aliases.sh"
```

install prelude
```
cp my-emacs-prelude.el ~/.emacs.d/personal
```
