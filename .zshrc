##########################################
# Shamelessly yanked from eevee's .zshrc #
##########################################

autoload colors; colors

### Tab completion

# Force a reload of completion system if nothing matched; this fixes installing
# a program and then trying to tab-complete its name
_force_rehash() {
    (( CURRENT == 1 )) && rehash
    return 1    # Because we didn't really complete anything
}

# Always use menu completion, and make the colors pretty!
zstyle ':completion:*' menu select yes
zstyle ':completion:*:default' list-colors ''

zstyle :compinstall filename '~/.zshrc'

# Always do mid-word tab completion
setopt complete_in_word

autoload -Uz compinit
compinit

### History
setopt extended_history hist_no_store hist_ignore_dups hist_expire_dups_first hist_find_no_dups inc_append_history share_history hist_reduce_blanks hist_ignore_space
export HISTFILE=~/.zsh_history
export HISTSIZE=1000000
export SAVEHIST=1000000


### Some..  options
setopt autocd beep extendedglob nomatch
unsetopt notify

# Don't count common path separators as word characters
WORDCHARS=${WORDCHARS//[&.;\/]}


### Prompt

PROMPT="%{%(!.$fg_bold[red].$fg_bold[green])%}%n@%m%{$reset_color%} %{$fg_bold[blue]%}%~%{$reset_color%} %(!.#.$) "
RPROMPT_code="%(?..\$? %{$fg_no_bold[red]%}%?%{$reset_color%}  )"
RPROMPT_jobs="%1(j.%%# %{$fg_no_bold[cyan]%}%j%{$reset_color%}  .)"
RPROMPT_time="%{$fg_bold[black]%}%*%{$reset_color%}"
RPROMPT=$RPROMPT_code$RPROMPT_jobs$RPROMPT_time


### Misc aliases


### ls

LSOPTS='-lAvF --si'  # long mode, show all, natural sort, type squiggles, friendly sizes
LLOPTS=''
case $(uname -s) in
    Linux)
        eval "$(dircolors -b)"
        LSOPTS="$LSOPTS --color=auto"
        LLOPTS="$LLOPTS --color=always"  # so | less is colored

        # Just loaded new ls colors via dircolors, so change completion colors
        # to match
        zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
        ;;
esac
alias ls="ls $LSOPTS --color"
alias ll="ls $LLOPTS | less -FX"
alias grep="noglob grep -E"


#Coloring the hostname uniquiely for each machine.

case $HOST in
    dragonhoard)
        hostcolor=blue
        ;;
    shadowrunner)
        hostcolor=gray
        ;;
    *)
        hostcolor=white
        ;;
esac
PS1="%n@%{$fg[$hostcolor]%}%B%m%b%u%{$reset_color%}:%{$fg[green]%}%2~%{$fg[magenta]%}%%%{$reset_color%} "