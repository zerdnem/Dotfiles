#[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources &

#compton --config ~/.compton.conf -b &

#sh ~/.fehbg &
#compton --config ~/.compton.conf

#/usr/bin/VBoxClient-all
volnoti &

xrdb merge ~/.Xresources &

xbindkeys &

rofi -key-run Alt+F2 &
#exec enlightenment_start
exec dwm
