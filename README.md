Vim
===

This repository contains my constantly evolving (hopefully) vim setup.

# Getting started

## Vim 7.4+:

1. Clone this repository into ~/.vim on Linux or ~/vimfiles on Windows.
2. Launch vim and run the Ex command `:BundleInstall`

NOTICE: The bundle YouCompleteMe is a plugin with a compiled component. For 
this to work you need to install it manually by following the 
[Instructions](https://github.com/Valloric/YouCompleteMe#youcompleteme-a-code-completion-engine-for-vim)
for your platform.

## Vim older than including 7.3:

For older versions, Vim needs a link to use the vimrc in ~/.vim on Linux or 
~/vimfiles on Windows.
However there seem to be problems with this solution on Windows.
Therefore it's better to create a ~/\_vimrc file with the following line.

`source ~/vimfiles/vimrc`

After that you can follow the exact same steps as for Vim 7.4+ versions.

# How does this work

The main idea behind the management of this configuration is possible through 
the use of the bundle manager 
[Vundle](https://github.com/gmarik/Vundle.vim#about).
Plugins/Bundles for vim from github or vim-scripts.org only need to be listed 
in the vimrc and will be installed by Vundle with the Ex command 
`:BundleInstall`.
Apart from that everything else is configuration of standard vim and plugins.

