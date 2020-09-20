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

export GOPATH=$HOME/code/go

export PATH=$GOPATH/bin:$PATH

export PATH="/usr/local/share/chruby:$PATH"

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
alias grmia='git rebase master --interactive --autosquash'
alias gs='git status --short'
alias gss='git status'
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

# some more ls aliases
alias l='ls -l'
alias ll='ls -la'

if [ -e /Users/lazarmarkov/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/lazarmarkov/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# Shopify folders
alias vid='/Users/lazarmarkov/src/github.com/Shopify/video'
alias shs='cd /Users/lazarmarkov/src/github.com/Shopify/arrive-server'
alias shc='cd /Users/lazarmarkov/src/github.com/Shopify/arrive-client'
alias shw='cd /Users/lazarmarkov/src/github.com/Shopify/arrive-website' 
alias core='cd /Users/lazarmarkov/src/github.com/Shopify/shopify' 
alias mono='cd /Users/lazarmarkov/src/github.com/Shopify/monorail' 
alias bh='cd /Users/lazarmarkov/src/github.com/Shopify/bloodhound' 
alias gtdl='cd /Users/lazarmarkov/Downloads'

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Chrome shortcuts
alias cpsh='open -n -a "Google Chrome"  --args --profile-directory="Default" https://cloud-portal-tier2.shopifycloud.com/namespaces/arrive-server-production/runtime_instances' 
alias cpsha='open -n -a "Google Chrome"  --args --profile-directory="Default" https://cloud-portal-tier2.shopifycloud.com/namespaces/shop-accounts-production-unrestricted/runtime_instances'
alias cpbh='open -n -a "Google Chrome"  --args --profile-directory="Default" https://cloud-portal-tier2.shopifycloud.com/namespaces/bloodhound-production/runtime_instances' 
alias cpshw='open -n -a "Google Chrome"  --args --profile-directory="Default" https://cloud-portal-tier2.shopifycloud.com/namespaces/arrive-website-production'
alias chmode='open -n -a "Google Chrome"  --args --profile-directory="Default" https://app.mode.com/editor/shopify/reports/new'
alias ddbh='open -n -a "Google Chrome"  --args --profile-directory="Default" https://shopify.datadoghq.com/dashboard/xre-kf2-ns4/bloodhound'
alias ddsh='open -n -a "Google Chrome"  --args --profile-directory="Default" https://shopify.datadoghq.com/dashboard/ywd-3za-f35/shop-app'
alias ddshw='open -n -a "Google Chrome"  --args --profile-directory="Default" https://shopify.datadoghq.com/dashboard/sqv-uw3-jgs/arrive-website-production'
alias ddlazi='open -n -a "Google Chrome"  --args --profile-directory="Default" https://shopify.datadoghq.com/dashboard/chq-y4n-66n/lazis-dash'
alias srvbh='open -n -a "Google Chrome"  --args --profile-directory="Default" https://services.shopify.io/services/bloodhound'
alias srvsh='open -n -a "Google Chrome"  --args --profile-directory="Default" https://services.shopify.io/services/arrive-server'
alias coreq='open -n -a "Google Chrome"  --args --profile-directory="Default" https://merge-queue.shopifycloud.com/Shopify/shopify'
alias amp='open -n -a "Google Chrome"  --args --profile-directory="Default" https://analytics.amplitude.com/shopify-org/space/mrnrtay'
alias ghshw='open -n -a "Google Chrome" --args --profile-directory="Default" https://github.com/shopify/arrive-website'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/lazarmarkov/google-cloud-sdk/path.bash.inc' ]; then . '/Users/lazarmarkov/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/lazarmarkov/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/lazarmarkov/google-cloud-sdk/completion.bash.inc'; fi

