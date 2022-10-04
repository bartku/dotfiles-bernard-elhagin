# Package manager aliases
alias pacman='pacman --color=always'
alias pac="pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S"
alias yss='yay -Ss'
alias ys='yay -S'
alias pfiles='pacman -Fl'

alias lll='ls -crtl'
alias zs='nvim $HOME/.zshrc'
alias zpre='nvim $HOME/.zpreztorc'
alias github='git clone https://github.com/'

alias x='exit'
alias v='nvim $(fzf)'

alias gs='git status'
alias gc='git commit'
alias gaa='git add --all'
alias gpgm='git push github master'
alias grh='git reset --hard'

alias d='dman.sh'

alias mci='mvn clean install'

alias zd='z dot'

alias sshp='ssh -p 3022 bertold@atw0393'

alias c='clear'

# TMUX aliases
alias tml='tmux list-sessions'
alias tma='tmux attach-session -t'
alias tx='tmuxinator start'
alias tmu='tmuxinator start $(basename -s .yml $(ls ~/.tmuxinator | fzf))'

# Global aliases
alias -g G='| grep --color=always'
alias -g L='| less -r'
alias -g D='>/dev/null 2>/dev/null'

if (command -v exa >/dev/null); then
    alias ll='exa   -l --header --time-style=long-iso --group-directories-first --git'
    alias lll='exa -al --header --time-style=long-iso --group-directories-first --git'
fi

alias smart='~/Downloads/smartgit/bin/smartgit.sh &'

alias  nvim='export VIMRUNTIME=/usr/local/share/nvim/runtime && \nvim'
alias  vim='export VIMRUNTIME=/usr/share/vim/vim90 && \vim'

alias kk='kill -9 **'
