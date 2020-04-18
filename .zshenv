# update path
typeset -U path
path=(~/bin ~/.local/bin $path)

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

# deal.II
export DEAL_II_DIR=/opt/deal.ii-candi/deal.II-v9.1.1
source /opt/deal.ii-candi/configuration/enable.sh
