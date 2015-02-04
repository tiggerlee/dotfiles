" my vimrc
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'klen/python-mode'
Plugin 'tpope/vim-rails'
Plugin 'vimwiki/vimwiki'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on

" display line numbers
set number
" Search as you type.
set incsearch
" Ignore case when searching.
set ignorecase
" Automatically indent when adding a curly bracket, etc.
set smartindent
" Tabs should be converted to a group of 4 spaces.
" This is the official Python convention
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
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

" make vimwiki use markdown default
let g:vimwiki_list = [{'path': '~/my_site/',
                        \ 'syntax': 'markdown', 'ext': '.md'}]

