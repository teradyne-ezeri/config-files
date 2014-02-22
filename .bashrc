# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# ls

LSOPTS='-lAvF --si'  # long mode, show all, natural sort, type squiggles, friendly sizes
LLOPTS=''
case $(uname -s) in
    Linux)
        eval "$(dircolors -b)"
        LSOPTS="$LSOPTS --color=auto"
        LLOPTS="$LLOPTS --color=always"  # so | less is colored
        ;;
esac
alias ls="ls $LSOPTS --color"
alias ll="ls $LLOPTS | less -FX"
alias grep="noglob grep -E"

alias rot13="tr '[A-Za-z]' '[N-ZA-Mn-za-m]'"
alias emacs="env -u XMODIFIERS emacs"

#Coloring the hostname uniquiely for each machine.

case $HOST in
    metalpool)
        hostcolor=blue
        ;;
    rubberpool)
        hostcolor=cyan
        ;;
    *)
        hostcolor=white
        ;;
esac
