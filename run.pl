#!/usr/bin/perl 

use strict;
use warnings;

`rm ~/.vimrc && ln -s vimrc ~/.vimrc`;
`rm ~/.tmux.conf && ln -s tmux.conf ~/.tmux.conf`;
`rm ~/.bashrc && ln -s bash.bashrc ~/.bashrc`;
