#!/bin/sh

# Terminate already running bspwm instances
killall -q bspwm

# Wait until the processes have been shut down
while pgrep -x bspwm >/dev/null; do sleep 1; done

# Ensure sxhkd is running
pgrep -x sxhkd > /dev/null || sxhkd &

# Start bspwm
bspwm &

# Configure monitors
bspc monitor -d I II III IV V VI VII VIII IX X

# Set borders and gaps
bspc config border_width 2
bspc config window_gap 12

# Set border colors
bspc config normal_border_color "#444444"
bspc config active_border_color "#285577"
bspc config focused_border_color "#005577"
bspc config presel_feedback_color "#268bd2"

# Window settings
bspc config split_ratio 0.5
bspc config borderless_monocle true
bspc config gapless_monocle true
bspc config single_monocle true

# Automatic window balancing
bspc config automatic_scheme spiral



# Make sure the sxhkd configuration file is executable
chmod +x ~/.config/sxhkd/sxhkdrc

# Start sxhkd
pgrep -x sxhkd || sxhkd &

# Autostart
.autostart.sh