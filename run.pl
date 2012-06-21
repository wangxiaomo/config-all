#!/usr/bin/perl 

use strict;
use warnings;

`rm -f ~/.vimrc && cp vimrc ~/.vimrc`;
`rm -f ~/.tmux.conf && cp tmux.conf ~/.tmux.conf`;
`rm -f ~/.bashrc && cp bash.bashrc ~/.bashrc`;
