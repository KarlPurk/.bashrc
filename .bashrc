#-----------------------------------------------------------------------
# Default to gVim inside Git Bash
#-----------------------------------------------------------------------
PATH=/c/Program\ Files\ \(x86\)/Vim/vim74:$PATH  

#-----------------------------------------------------------------------
# Git
#-----------------------------------------------------------------------

alias ga="git add -A"
alias gb="git branch"
alias gc="git commit"
alias gcm="git commit -m"
alias gd="git diff"
alias gl="git log --graph"
alias gm="git merge"
alias go="git checkout"
alias gp="git push"
alias gu="git pull"
alias gs="git status"
alias gca="git rm -r --cached . && git add ."
alias dsf="git diff --color | diff-so-fancy"

#-----------------------------------------------------------------------
# Changing directories
#-----------------------------------------------------------------------

# Change to projects directory
alias p="cd /d/projects/"

# Change to home directory
alias h="cd ~"

#-----------------------------------------------------------------------
# General Bash
#-----------------------------------------------------------------------

alias c="clear"
alias q="exit"

# Edit aliases
alias ea="vim ~/.bashrc"

#-----------------------------------------------------------------------
# Windows Integration
#-----------------------------------------------------------------------

alias e="explorer.exe ."

#-----------------------------------------------------------------------
# Vagrant
#-----------------------------------------------------------------------

alias vu="vagrant up"
alias vshh="vagrant ssh"
alias vs="vagrant suspend"
alias vd="vagrant destroy"
alias vp="vagrant provision"
