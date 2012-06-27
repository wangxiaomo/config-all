#!/bin/bash - 
set -o nounset

# update the source 
apt-get update
# update the system to the current newest
update-manager -d
apt-get install aptitude
aptitude update
aptitude install vim vim-gtk vim-gnome git tmux

# upgrade the system
aptitude upgrade
aptitude install build-essential python-setuptools htop ipython irssi openssh-server subversion openbox fvwm gmrun

# install latex
aptitude install texlive-latex* latex-cjk-all
