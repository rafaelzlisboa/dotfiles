alias ls="ls -Gh"
alias ll="ls -la"
alias gs="git status"
alias e='open -a Emacs "$@"'
alias p="cd ~/Projects"
alias d="cd ~/Desktop"
alias tree="tree -C"
alias f="find . -name"
alias emacs="emacs -nw"

alias slackscale="mogrify -resize 128x128 -unsharp 2x1.4+0.5+0 -quality 100 -verbose"

animate_wallpaper() {
  /System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background &
}
