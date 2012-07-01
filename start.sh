#!/bin/bash - 
set -o nounset

# update the source 
apt-get update
# update the system to the current newest
update-manager -d
apt-get install aptitude
aptitude update
aptitude install vim vim-gtk vim-gnome git tmux openssh-server

# upgrade the system
aptitude upgrade
aptitude install build-essential htop irssi subversion gtk-chtheme qt3-qtconfig qt4-qtconfig synergy awesome xloadimage xchat smplayer vlc scrot

# install latex
aptitude install texlive-latex* latex-cjk-all

# install python tools
aptitude install python-pip python-setuptools ipython
