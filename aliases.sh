alias ls="ls -Gh"
alias ll="ls -la"
alias gs="git status"
alias gsr="git svn rebase"
alias e='open -a Emacs "$@"'
alias p="cd ~/Projects"
alias d="cd ~/Desktop"
alias tree="tree -C"
alias f="find . -name"

alias iphone="open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app" 
alias starbound="open '/Users/rafael/Library/Application Support/Steam/SteamApps/common/Starbound/Starbound.app'"


animate_wallpaper() {
  /System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background &
}