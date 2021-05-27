# Git aliases
alias gs='git status'
alias gaa='git add --all :/'
alias gcaa='git commit --amend -a'
alias gca='git commit --amend'
alias gd='git diff'

# A vim command for the terminal
alias :q='exit'
alias :Q='exit'

alias vim='nvim'

# We want the SVN commit editor to be vim.
export SVN_EDITOR=nvim
export EDITOR=nvim

# Disable auto-titling to preserve tmux window names.
export DISABLE_AUTO_TITLE="true"

# Custom, computer specific settings
source ~/.bash_profile.which
source ~/.bash_profile.local
