# Zmienne
export VISUAL="vim"
export EDITOR="$VISUAL"

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

# Funkcje
cdls (){
    cd $1 && ls
}
