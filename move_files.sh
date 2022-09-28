#!/bin/bash

yes | /bin/cp -rf .bash_aliases $HOME
yes | /bin/cp -rf .bashrc $HOME
yes | /bin/cp -rf .vimrc $HOME

echo "Log out and back in for files to take effect"
