# launch graphical interface if tty is tty1
if [ $(tty) = /dev/tty1 ]; then
    #exec startx
    #exec sway
fi

