# Aliases

alias proj="cd ~/Desktop/Electric-Studio-Projects"
alias desk="cd ~/Desktop"
alias down="cd ~/Desktop/downloads"
alias sites="cd /Applications/XAMPP/htdocs"
alias restart="sudo apachectl restart"

alias ..="cd .."
alias ...="cd ../../"
alias ....="cd ../../../"

### Git
alias gs="git status"
alias gd="git diff"
alias gl="git log --graph --full-history --all --color"
alias ga="git add -A"
alias gb="git branch"

function gm() {
     git commit -am "$1"
}

function gam() {
    git add -A :/ && git commit -m "$1"
}

alias gpom="git push origin master"
alias gpuom="git pull origin master"
alias gpov="git push origin v4"
alias gpos="git push origin staging"
alias gpol="git push origin live"
alias gpuol="git pull origin live"

alias gcm="git checkout master"
alias gcs="git checkout staging"
alias gcl="git checkout live"

alias bp="sudo vim ~/.bash_profile"
alias sbp="source ~/.bash_profile"

alias do="ssh root@178.62.25.107"
alias ls="ls -laF"

set -o vi
# Sexy Bash Prompt, inspired by "Extravagant Zsh Prompt"
# Screenshot: http://cloud.gf3.ca/M5rG
# A big thanks to \amethyst on Freenode

if [[ $COLORTERM = gnome-* && $TERM = xterm ]]  && infocmp gnome-256color >/dev/null 2>&1; then export TERM=gnome-256color
elif [[ $TERM != dumb ]] && infocmp xterm-256color >/dev/null 2>&1; then export TERM=xterm-256color
fi

if tput setaf 1 &> /dev/null; then
    tput sgr0
    if [[ $(tput colors) -ge 256 ]] 2>/dev/null; then
      MAGENTA=$(tput setaf 9)
      ORANGE=$(tput setaf 172)
      GREEN=$(tput setaf 190)
      PURPLE=$(tput setaf 141)
      WHITE=$(tput setaf 0)
    else
      MAGENTA=$(tput setaf 5)
      ORANGE=$(tput setaf 4)
      GREEN=$(tput setaf 2)
      PURPLE=$(tput setaf 1)
      WHITE=$(tput setaf 7)
    fi
    BOLD=$(tput bold)
    RESET=$(tput sgr0)
else
    MAGENTA="\033[1;31m"
    ORANGE="\033[1;33m"
    GREEN="\033[1;32m"
    PURPLE="\033[1;35m"
    WHITE="\033[1;37m"
    BOLD=""
    RESET="\033[m"
fi

parse_git_dirty () {
  [[ $(git status 2> /dev/null | tail -n1 | cut -c 1-17) != "nothing to commit" ]] && echo "*"
}
parse_git_branch () {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty)/"
}

PS1="\[${BOLD}${MAGENTA}\]\u \[$WHITE\]at \[$ORANGE\]\h \[$WHITE\]in \[$GREEN\]\w\[$WHITE\]\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" on \")\[$PURPLE\]\$(parse_git_branch)\[$WHITE\]\n\$ \[$RESET\]"

# export PS1="\w: "

export PATH=/usr/local/bin:$PATH
export PATH=/usr/bin/gem:$PATH
export PATH=~/.composer/vendor/bin/:$PATH

# Aliases imported through newSite.sh script
alias ba="sites && cd big-andy.co.uk/content/themes/v4"
alias bag="ba && gulp"
alias boi="sites && cd source/boilerplate"
alias re="sites && cd radius-equity/wp-content/themes/radius-equity"
alias reg="re && grunt"
alias tele="sites && cd teleflex/wp-content/themes/teleflex"
alias teleg="tele && grunt"
alias ox="sites && cd oxword2/wp-content/themes/oxwords-theme"
alias oxg="ox && grunt"
alias op="sites && cd optek/wp-content/themes/Optek"
alias mt="sites && cd mtcqs/wp-content/themes/mtcqs"
alias mtg="mt && gulp"
