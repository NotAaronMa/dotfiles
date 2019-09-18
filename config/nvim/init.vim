set nocompatible
"-------------- Load Plugins --------------

call plug#begin('~/.local/share/nvim/plugged')
Plug 'itchyny/lightline.vim'
call plug#end()

"--------------Basic Settings--------------
"set runtime so packages work
runtime! archlinux.vim
"fast scroll yeet
set ttyfast

"sexy ass statusbar
set showtabline=2
set laststatus=2
set display=lastline
set noshowmode
set noruler
set noshowcmd
"copy/paste from clip
"autocomplete
set wildmode=longest,list,full
"doesn't fucking work nvim on 0.4.2 for some reason
set clipboard+=unnamed
let g:loaded_clipboard_provider='*'
retab
"--------------Programming Stuff--------------
"syntax
filetype off
syntax on                
filetype plugin indent on
set matchpairs+=<:>
"spaces > tabs
set tabstop=3 shiftwidth=3 expandtab autoindent
retab
"line numbers
set number
set numberwidth=3

