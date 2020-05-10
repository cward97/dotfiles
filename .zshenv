# update path
typeset -U path
path=($path ~/.local/bin ~/bin)

# set default editors
export EDITOR=/usr/bin/vi
export VISUAL=/usr/bin/nvim

# set delay between modes in vi mode
export KEYTIMEOUT=10

# set zsh history
export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE=~/.zsh_history

# python
export PYTHONPATH=~/usr/lib/python3/packages

# Perple_X
export PERPLEX_DIR=~/opt/perplex
