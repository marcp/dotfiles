xrdb -merge ~/.Xresources

sh ~/.fehbg &

pidof mpdscribble >& /dev/null
if [ $? -ne 0 ]; then
 mpdscribble &
fi

xsetroot -cursor_name left_ptr
xscreensaver -no-splash &
xmodmap ~/.xswap
xmonad

autocutsel -fork &
autocutsel -selection PRIMARY -fork &
