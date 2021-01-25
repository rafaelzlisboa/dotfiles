alias ls="ls -Gh"
alias ll="ls -la"
alias gs="git status"
alias gsr="git svn rebase"
alias e='open -a Emacs "$@"'
alias p="cd ~/Projects"
alias d="cd ~/Desktop"
alias tree="tree -C"
alias f="find . -name"
alias emacs="emacs -nw"

alias iphone="open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app"
alias starbound="open '/Users/rafael/Library/Application Support/Steam/SteamApps/common/Starbound/Starbound.app'"

alias slackscale="mogrify -resize 128x128 -unsharp 2x1.4+0.5+0 -quality 100 -verbose"

animate_wallpaper() {
  /System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background &
}
