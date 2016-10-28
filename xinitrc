#[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources &

#compton --config ~/.compton.conf -b &

#sh ~/.fehbg &
#compton --config ~/.compton.conf

#/usr/bin/VBoxClient-all
#xmodmap $HOME/.xmodmap-arch
#3volnoti &

xrdb merge ~/.Xresources &

#xbindkeys &

#sh 1920x1080.sh

#compton -cCGfF -o 0.38 -O 200 -I 200 -t 0 -l 0 -r 3 -D2 -m 0.88 &

#rofi -key-run Alt+F2 &
#exec enlightenment_start
exec dwm
