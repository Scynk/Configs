# Funkcje
cdls () {
    cd $1 && ls
}

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Zmienne
export PS1="\n\[\e[33m\]\u \[\e[31m\]\h\[\e[m\] \[\e[36m\]\w\[\e[m\] \[\e[32m\]\`parse_git_branch\`\[\e[m\] \n\\$ "
export VISUAL="vim"
export EDITOR="$VISUAL"
export HISTCONTROL=ignorespace

# Aliasy
alias ll='ls -la --color=auto'
alias grep='grep --color=auto'
alias srcbash='source ~/.bashrc'
alias enters='while read line; do printf "\e[0;32m$line\n\n"; read line && printf "\e[0;33m$line\n\n" ; done'
alias :q='logout'
alias gits='git status'
alias gitl='git log --oneline --all'
alias tmux='tmux -u'
alias tt='tmux att -t'
alias tls='tmux ls'
alias tn='tmux new -s'
