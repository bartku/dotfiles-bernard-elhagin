# Package manager aliases
alias pacman='pacman --color=always'
alias pss='pacman -Ss'
alias pS='sudo pacman -S'
alias yss='yay -Ss'
alias ys='yay -S'
alias pfiles='pacman -Fl'

alias lll='ls -crtl'
alias zs='vim $HOME/.zshrc'
alias github='git clone https://github.com/'

alias x='exit'
alias v='vim $(fzf)'

alias gs='git status'
alias gc='git commit'
alias gaa='git add --all'
alias gpgm='git push github master'

alias mci='mvn clean install'

alias r='ranger'

alias zd='z dot'

alias tx='tmuxinator start'

alias sshp='ssh -p 3022 bertold@atw0393'

alias c='clear'

# Global aliases
alias -g G='| grep --color=always'
alias -g L='| less -r'
alias -g D='>/dev/null 2>/dev/null'

if (command -v exa >/dev/null); then
    alias ll='exa   -l --header --time-style=long-iso --group-directories-first --git'
    alias lll='exa -al --header --time-style=long-iso --group-directories-first --git'
fi
