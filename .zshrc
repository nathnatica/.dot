alias cd='cd '
alias l='ls --color=auto'
alias ll='ls -lh --color=auto'
alias la='ls -A --color=auto'
alias lla='ls -lhA --color=auto'
alias ltr='ls -ltrAh --color=auto'
alias g='grep -i'
alias f='find . -iname'
alias ducks='du -cks * | sort -rn | head -11'
alias mkdir='mkdir -p'
alias pg='ps ax | grep'
alias ns='netstat -tupln'

alias gco='git checkout'
alias gbr='git branch'
alias gco='git commit'
alias gs='git status'
alias gg='git log --graph --abbrev-commit --pretty=oneline --decorate'
alias gus='git reset HEAD --'
alias glast='git log -1 HEAD'
alias grv='git checkout'


export EDITOR=vi
set -o vi


export HISTCONTROL=ignoredups

if [ ! -f ~/dirs ]; then
        touch ~/.dirs
fi

alias show='cat ~/.dirs'

save() {
        command sed "/@!/d" ~/.dirs > ~/.dirs1; mv ~/.dirs1 ~/.dirs; echo "$@"="`pwd`" >> ~/.dirs; source ~/.dirs ;
}
source ~/.dirs
#shopt -s cdable_vars
setopt cdable_vars



# displays git branch
c_cyan=`tput setaf 6`
c_red=`tput setaf 1`
c_green=`tput setaf 2`
c_sgr0=`tput sgr0`

parse_git_branch () {
        if git rev-parse --git-dir >/dev/null 2>&1
        then
                gitver=$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')
        else
                return 0
        fi
        echo -e $gitver
}
branch_color ()
{
        if git rev-parse --git-dir >/dev/null 2>&1
        then
                color=""
                if git diff --quiet 2>/dev/null >&2
                then
                        color=${c_green};
                else
                        color=${c_red};
                fi
        else
                return 0
        fi
        echo -ne $color
}
open_braket ()
{
        if git rev-parse --git-dir >/dev/null 2>&1
        then
                echo '('
        else
                return 0
        fi
}
close_braket ()
{
        if git rev-parse --git-dir >/dev/null 2>&1
        then
                echo ')'
        else
                return 0
        fi
}

#export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \W \[${c_sgr0}\]$(open_braket)\[$(branch_color)\]$(parse_git_branch)\[${c_sgr0}\]$(close_braket)\[\033[01;34m\]\$\[\033[00m\] '


autoload -U promptinit
promptinit
PROMPT="%{$fg[green]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg_no_bold[yellow]%}%1~ %{$reset_color%}%#"
RPROMPT="[%{$fg_no_bold[yellow]%}%?%{$reset_color%}]"

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*' # case insensitive completion for cd etc *N*

