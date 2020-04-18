# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# hamilton
if [[ $HOSTNAME = hamilton?.hpc.dur.ac.uk ]]; then
  module load gcc/8.2.0 likwid/5.0.1
fi
