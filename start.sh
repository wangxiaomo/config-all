#!/bin/bash - 
set -o nounset

# update the source 
apt-get update
# update the system to the current newest
update-manager -d
apt-get install aptitude
aptitude update
aptitude install vim vim-gtk vim-gnome git

# upgrade the system
aptitude upgrade
aptitude install python-setuptools ipython irssi geany openssh-server subversion openbox fvwm
