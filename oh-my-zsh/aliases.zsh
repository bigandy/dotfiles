alias bp="vim $ZSH_CUSTOM/aliases.zsh"
alias sbp="source $ZSH_CUSTOM/aliases.zsh"

alias sites="cd ~/Sites"
alias ls="ls -la"

alias rd="rm -rf"

alias ..="cd .."
alias ...="cd ../../"
alias ....="cd ../../../"

alias desk="cd ~/Desktop"

alias restart="brew services restart httpd"
alias ap-stop="sudo apachectl stop"

## VS Code
alias c="code-insiders"

## Open Links in Chrome
alias twitter="openLinkInFirefox https://twitter.com"

### Git
alias gs="git status"
alias gd="git diff"
alias gl="git log --graph --full-history --all --color"
alias ga="git add -A"
alias gb="git branch"
alias gc="git checkout"
alias gp="git push"
alias gfo="git fetch origin --prune"
alias gpc='git push origin `git rev-parse --abbrev-ref HEAD`'
alias gc.="git checkout ."

alias gpom="git push origin main"
alias gpuom="git pull origin main"
alias gcm="git checkout main"
alias gmm="git merge main"

alias gpod="git push origin develop"
alias gpuod="git pull origin develop"
alias gcd="git checkout develop"
alias gmd="git merge develop"


### NPM
alias nrd="npm run dev"
alias nrb="npm run build"


## Site Specific
alias mono="sites && cd mono"
alias msb="mono && yarn workspace @bigandy/ui dev"
