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

randSym() {
    echo -en "\u$(printf '%x' $((RANDOM%51+768)))"
}

symSpam() {
    local intensity=$1
    local spam=""
    local spam_length=$((intensity / 3))
    for ((i=0; i<$spam_length; i++)); do
        spam+=$(randSym)
    done
    echo -n $spam
}

glitchify() {
    local input_text=$1
    local intensity=$2
    local glitched_text=""
    for ((i=0; i<${#input_text}; i++)); do
        local char=${input_text:$i:1}
        char=$(symSpam $intensity)$char
        glitched_text+=$char
    done
    echo $glitched_text
}

glitch() {
    local input_text=$(cat)
    local intensity=50
    glitched_text=$(glitchify "$input_text" $intensity)
    echo $glitched_text
}

animate_wallpaper() {
  /System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background &
}
