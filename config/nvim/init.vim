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
set clipboard+=unnamedplus
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
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

