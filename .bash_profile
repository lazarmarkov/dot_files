function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo " ("${ref#refs/heads/}")"
}

# Set custom prompt
CLUSERHOST='\[\033[00;31m\]'
CLPATH='\[\033[00;33m\]'
CLGIT='\[\033[00;32m\]'
CLCOLON='\[\033[00;37m\]'
CLRESET='\[\033[00m\]'
ARROWICON=$(echo -e "\xe2\x86\xb3")
PS1="$CLUSERHOST\u@\h$CLCOLON:$CLPATH\w$CLGIT\$(parse_git_branch)$CLRESET\\n\$ARROWICON$ "

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export GOPATH=$HOME/code/go

export PATH=$GOPATH/bin:$PATH

export LANG=en_US

if [[ -f /opt/dev/dev.sh ]]; then source /opt/dev/dev.sh; fi

# ----------------------
# Git Aliases
# ----------------------
alias ga='git add'
alias gap='git add -p'
alias gaa='git add .'
alias gc='git commit'
alias gca='git commit --amend -C head'
alias gcf='git commit --fixup'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gd='git diff'
alias gds='git diff --staged'
alias gda='git diff HEAD'
alias gl='git log'
alias glg='git log --graph --oneline --decorate --all'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias gm='git merge --no-ff'
alias gp='git pull'
alias gr='git rebase'
alias grc='git rebase --continue'
alias gra='git rebase --abort'
alias grm='git rebase master'
alias grmi='git rebase master --interactive'
alias gs='git status --short'
alias gss='git status'
alias gsts='git stash save'
alias gst='git stash'

# ----------------------
# Git Functions
# ----------------------
# Git log find by commit message
function glf() { git log --all --grep="$1"; }

# Unstage file or folder.
function grf() { git reset -- "$1"; }

# Unstage and revert changes to file or folder.
function grfh() { git checkout HEAD -- "$1"; }
