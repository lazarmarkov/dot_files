autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats 'on %F{011}|%b%f'

setopt PROMPT_SUBST
PROMPT='%F{040}%n%f in %F{031}${PWD/#$HOME/~}%f ${vcs_info_msg_0_}> '

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh
if [ -e /Users/lazi/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/lazi/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

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

# Shopify folders
alias shs='cd /Users/lazi/src/github.com/Shopify/arrive-server'
alias sha='cd /Users/lazi/src/github.com/Shopify/shop-accounts'
alias pay='cd /Users/lazi/src/github.com/Shopify/pay'
alias shc='cd /Users/lazi/src/github.com/Shopify/arrive-client'
alias shw='cd /Users/lazi/src/github.com/Shopify/arrive-website' 
alias core='cd /Users/lazi/src/github.com/Shopify/shopify' 
alias mono='cd /Users/lazi/src/github.com/Shopify/monorail' 
alias bh='cd /Users/lazi/src/github.com/Shopify/bloodhound' 

# System folders
alias gtdl='cd /Users/lazi/Downloads'
alias gtdt='cd /Users/lazi/Desktop'

# Chrome shortcuts
alias cpsh='open -n -a "Google Chrome"  --args --profile-directory="Default" https://cloud-portal-apps-a-us-east1-4.shopifycloud.com/namespaces/arrive-server-production/runtime_instances' 
alias cpsha='open -n -a "Google Chrome"  --args --profile-directory="Default" https://cloud-portal-apps-a-us-east1-4.shopifycloud.com/namespaces/shop-accounts-production-unrestricted/runtime_instances'
alias cppay='open -n -a "Google Chrome"  --args --profile-directory="Default" https://cloud-portal.shopifycloud.com/namespaces/remember-me-production/runtime_instances'
alias cpbh='open -n -a "Google Chrome"  --args --profile-directory="Default" https://cloud-portal-apps-a-us-east1-4.shopifycloud.com/namespaces/bloodhound-production/runtime_instances' 
alias cpshw='open -n -a "Google Chrome"  --args --profile-directory="Default" https://cloud-portal-apps-a-us-east1-4.shopifycloud.com/namespaces/arrive-website-production'
alias chmode='open -n -a "Google Chrome"  --args --profile-directory="Default" https://app.mode.com/editor/shopify/reports/new'
alias ddbh='open -n -a "Google Chrome"  --args --profile-directory="Default" https://shopify.datadoghq.com/dashboard/xre-kf2-ns4/bloodhound'
alias ddsh='open -n -a "Google Chrome"  --args --profile-directory="Default" https://shopify.datadoghq.com/dashboard/ywd-3za-f35/shop-app'
alias ddsha='open -n -a "Google Chrome"  --args --profile-directory="Default" https://shopify.datadoghq.com/dashboard/tvr-kki-psx/shop-accounts'
alias ddshw='open -n -a "Google Chrome"  --args --profile-directory="Default" https://shopify.datadoghq.com/dashboard/sqv-uw3-jgs/arrive-website-production'
alias ddlazi='open -n -a "Google Chrome"  --args --profile-directory="Default" https://shopify.datadoghq.com/dashboard/chq-y4n-66n/lazis-dash'
alias srvbh='open -n -a "Google Chrome"  --args --profile-directory="Default" https://services.shopify.io/services/bloodhound'
alias srvsh='open -n -a "Google Chrome"  --args --profile-directory="Default" https://services.shopify.io/services/arrive-server'
alias coreq='open -n -a "Google Chrome"  --args --profile-directory="Default" https://merge-queue.shopifycloud.com/Shopify/shopify'
alias amp='open -n -a "Google Chrome"  --args --profile-directory="Default" https://analytics.amplitude.com/shopify-org/space/mrnrtay'
alias ghshw='open -n -a "Google Chrome" --args --profile-directory="Default" https://github.com/shopify/arrive-website'

