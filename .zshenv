# Prepend items to PATH.
export PATH=$HOME/bin:$HOME/local/bin:$HOME/.local/bin:$PATH

# Append items to PATH.
export PATH=$PATH:$(ruby -e 'puts Gem.user_dir')/bin

export LD_LIBRARY_PATH=$HOME/local/lib:$LD_LIBRARY_PATH
export MANPATH=$HOME/local/share/man:$MANPATH

# set default editors
export EDITOR=/usr/bin/vi

if [ -e /usr/bin/nvim ]; then
  export VISUAL=/usr/bin/nvim
elif [ -e /usr/bin/vim ]; then
  export VISUAL=/usr/bin/vim
else
  export VISUAL=$EDITOR
fi

# set delay between modes in vi mode
export KEYTIMEOUT=10

# set zsh history
export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE=~/.zsh_history

if [[ $USER == connor ]]; then
  # python
  export PYTHONPATH=~/lib/python3/packages
fi
