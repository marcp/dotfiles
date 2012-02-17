xrdb -merge ~/.Xresources

#xrandr --output LVDS1 --mode 1366x768 --output VGA1 --mode 1440x900 --above LVDS1
#xrandr --output LVDS1 --auto --primary --output VGA1 --auto --above LVDS1
#xrandr --output HDMI1 --off --output LVDS1 --mode 1366x768 --pos 0x0 --rotate normal --output DP1 --off --output VGA1 --mode 1440x900 --pos 0x768 --rotate normal

sh ~/.fehbg &

xsetroot -cursor_name left_ptr
xscreensaver -no-splash &
xmodmap ~/.xswap
xmonad
