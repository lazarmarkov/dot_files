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

