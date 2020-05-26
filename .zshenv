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

  # Perple_X
  export PERPLEX_DIR=~/opt/perplex
fi

if [[ $HOST == hamilton?.hpc.dur.ac.uk ]]; then
  export DATA=/ddn/data/fksc76

  source /etc/profile.d/modules.sh
  module load gcc/8.2.0 \
              cmake/3.6.2 \
              lapack/gcc/3.5.0 \
              zlib/gcc/1.2.7 \
              sge/current \
              openmpi/gcc/2.1.1 \
              gsl/gcc/64/1.15 \
              python/3.6.8

  export CC=mpicc; export CXX=mpicxx; export FC=mpif90; export FF=mpif77

  # ASPECT
  export DEAL_II_DIR=/ddn/data/dgl6jv1/Progs/ASPECT_20181001/deal.ii-candi/tmp/build/deal.II-v9.0.0
  export PERPLEX_DIR=~/opt/perplex
fi
