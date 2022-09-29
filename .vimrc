" my vimrc
set nocompatible              " be iMproved, required
syntax on
syntax enable

filetype plugin indent on

" Wraps text at the end of a word. This is what prevents a word from being split in two.
set linebreak
" display line numbers
set number
" Search as you type.
set incsearch
" Ignore case when searching.
set ignorecase
" set indent
set expandtab
set shiftwidth=2
set softtabstop=2
set smartindent
" Use UTF-8.
set encoding=utf-8
" Status line
set laststatus=2
set statusline=
set statusline+=%-3.3n\ " buffer number
set statusline+=%f\ " filename
set statusline+=%h%m%r%w " status flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type
set statusline+=%= " right align remainder
set statusline+=0x%-8B " character value
set statusline+=%-14(%l,%c%V%) " line, character
set statusline+=%<%P " file position
" To insert timestamp, press F3.
nmap <F3> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>
" Show editing mode
set showmode
" Set leader key
let mapleader = ","

colorscheme evening
