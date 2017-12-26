#!/bin/bash

VIMRC_CONTENT="syntax on
               set background=dark
               colorscheme candy
               set cursorline"

echo ${VIMRC_CONTENT}

echo "preparing vimrc..."
echo ${VIMRC_CONTENT} > ~/.vimrc
echo  "--------vimrc-----------"
cat ~/.vimrc

echo "***preparing color schemes..."
mkdir -p ~/.vim/colors
cp ../color_scheme/*.vim  ~/.vim/colors
ls ~/.vim/colors

echo "***preparing high light scripts..."
mkdir -p ~/.vim/plugin
cp ../highlight/mark.vim  ~/.vim/plugin
ls ~/.vim/plugin
