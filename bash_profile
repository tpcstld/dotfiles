# graphical vim
# alias vim='gvim'
# ls aliases
alias ls='ls -l --color'
alias dir='ls -l --color'

# Git aliases

alias gs='git status'
alias gaa='git add --all :/'
alias gcaa='git commit --amend -a'
alias gca='git commit --amend'
alias gd='git diff'

# A vim command for the terminal
alias :q='exit'

# Override the open command to make it behave like OSX.
alias open='xdg-open'

# We want the SVN commit editor to be vim.
export SVN_EDITOR=vim

# Custom, computer specific settings
source ~/.bash_profile.local
