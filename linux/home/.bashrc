# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi
complete -C '/usr/bin/aws_completer' aws
shopt -s globstar
. ~/.git-completion.bash ##download from https://github.com/git/git/blob/master/contrib/completion/git-completion.bash

alias e='history -c && exit'
alias g='grep -i'
alias h=head
alias t=tail
alias l=ls
alias ll='ls -l --color=auto --time-style=long-iso'
alias la='ls -a'
alias od='od -tx1z'
alias cg='cd `git rev-parse --show-toplevel`'
export ag='--date=relative'
export T='--output text'
export GLOBIGNORE=.:..
export PS1='\001\033[31m\002${?#0}\001\033[33m\002$(hostname|cut -c 9-)\001\033[0m\002 $(ps1)$(pwd|sed "s#^/home/ec2-user#~#" | sed -r "s#^(.{10}).*(.{30})#\1█\2#")\$ '

export PATH=$PATH:/usr/local/css:/usr/local/lib64/groovy-3.0.0-alpha-4/bin/:/usr/local/lib64/FlameGraph:/usr/local/lib64/apache-maven-3.5.3/bin
