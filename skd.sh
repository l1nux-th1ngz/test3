#!/bin/bash

# Install sxhkd
sudo apt-get install -y sxhkd 

# Create necessary directories
mkdir -p ~/.config/sxhkd
mkdir -p ~/.config/bspwm

# Move configuration files to the appropriate directories
mv bspwmrc ~/.config/bspwm/
mv sxhkdrc ~/.config/sxhkd/

# Make configuration files executable
chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/sxhkd/sxhkdrc

echo "Installation and configuration of sxhkd and bspwm have been completed successfully."
