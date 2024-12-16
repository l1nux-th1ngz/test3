# Launch terminal (Kitty)
super + Return
    kitty

# Close window
super + q
    bspc node -c

# Focus windows
super + {h,j,k,l}
    bspc node -f {west,south,north,east}

# Swap windows
super + Shift + {h,j,k,l}
    bspc node -s {west,south,north,east}

# Move windows to different desktops
super + {_,Shift + }{1-9,0}
    bspc node -d ^{1-9,10}

# Toggle floating mode
super + Control + space
    bspc node -t floating

# Toggle fullscreen mode
super + f
    bspc node -t fullscreen

# Change window state
super + {t,s,m}
    bspc node -t {tiled,pseudo_tiled,monocle}

# Move windows between monitors
super + {w,e}
    bspc node -m {west,east}

# Cycle through windows
super + Tab
    bspc node -f last

# Restart BSPWM
super + Control + r
    bspc wm -r

# Reload sxhkd configuration
super + Escape
    pkill -USR1 -x sxhkd

# Launch file manager (Nemo)
super + o
    nemo

# Launch web browser (Firefox)
super + p
    firefox

# Launch Rofi (application launcher)
super + space
    rofi -show run

# Volume controls use playerctl
XF86AudioRaiseVolume
    amixer -q set Master 5%+ unmute

XF86AudioLowerVolume
    amixer -q set Master 5%- unmute

XF86AudioMute
    amixer -q set Master toggle

# Brightness controls use brightnessctl
XF86MonBrightnessUp
    brightnessctl set +10%

XF86MonBrightnessDown
    brightnessctl set 10%-
