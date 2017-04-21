set guioptions=Ace
" set clipboard+=unnamed
set paste
set go+=a
set guifont=Terminus\ 9
set nocompatible              " be iMproved, required
filetype off                  " required
set number
set mouse=a
set laststatus=2              " for vim-airline to start
colorscheme wombat256
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'vim-scripts/autoswap.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-sensible'
Plugin 'kien/ctrlp.vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'powerman/vim-plugin-autosess'
Plugin 'Shutnik/jshint2.vim'
call vundle#end()            " required
filetype plugin indent on    " required
nmap <F10> :! gcc -std=c99  -m32 -O0 -fpic -shared -ldl -lGL -o test2.so test2.c<CR>
" c++ Test.so
" nmap <F10>  :! g++  -m32  -O0 -fpic -shared -ldl  -o test.so test.cpp<CR>

nmap <F11> :Autoformat<CR>
nmap <F12> :TagbarToggle<CR>
syntax on
map <2-MiddleMouse> <Nop>
imap <2-MiddleMouse> <Nop>
map <3-MiddleMouse> <Nop>
imap <3-MiddleMouse> <Nop>
map <4-MiddleMouse> <Nop>
imap <4-MiddleMouse> <Nop>
" Autoload Session
"let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
"let g:autoformat_remove_trailing_spaces = 0

