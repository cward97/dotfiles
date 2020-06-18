export PATH=$HOME/bin:$HOME/local/bin:$HOME/.local/bin:$PATH
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

  # project
  export PROJECT_DIR=~/Documents/uni/project/code/perplex-aspect

  # Perple_X
  export PERPLEX_DIR=$PROJECT_DIR/external/perplex
fi
