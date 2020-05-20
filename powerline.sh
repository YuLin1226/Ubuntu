#!/usr/bin/env bash
sudo apt install powerline

# to ~/.bashrc
echo "" >> ~/.bashrc
echo "# Powerline" >> ~/.bashrc
echo "POWERLINE_SCRIPT=/usr/share/powerline/bindings/bash/powerline.sh" >> ~/.bashrc
echo "if [ -f \$POWERLINE_SCRIPT ]; then" >> ~/.bashrc
echo "    source \$POWERLINE_SCRIPT" >> ~/.bashrc
echo "fi" >> ~/.bashrc