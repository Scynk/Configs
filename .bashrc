# Funkcje
cdls () {
    cd $1 && ls
}

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Zmienne
export PS1="\n\[\e[33m\]\u \[\e[31m\]\h\[\e[m\] \[\e[36m\]\w\[\e[m\] \[\e[32m\]\`parse_git_branch\`\[\e[97m\] \n\\$ "
export VISUAL="vim"
export EDITOR="$VISUAL"
export HISTCONTROL=ignorespace

# Aliasy
alias ls='ls --color=auto'
alias ll='ls -la --color=auto'
alias grep='grep --color=auto'
alias srcbash='source ~/.bashrc'
alias gits='git status'
alias gitl='git log --oneline --all'
alias tmux='tmux -u'
alias tt='tmux att -t'
alias tls='tmux ls'
alias tn='tmux new -s'
alias ss='sudo systemctl status'
alias st='sudo systemctl start'
alias sp='sudo systemctl stop'
alias sr='sudo systemctl restart'
alias p='sudo pacman'
