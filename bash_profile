# Git aliases
alias gs='git status'
alias gaa='git add --all :/'
alias gcaa='git commit --amend -a'
alias gca='git commit --amend'
alias gd='git diff'

# A vim command for the terminal
alias :q='exit'
alias :Q='exit'

# We want the SVN commit editor to be vim.
export SVN_EDITOR=vim

# Custom, computer specific settings
source ~/.bash_profile.which
source ~/.bash_profile.local
