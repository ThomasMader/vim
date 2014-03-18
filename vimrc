" BEGIN Vundle
set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 "  We manage the vundle version in our own repo for now so we don't need it
 "  here
" Bundle 'gmarik/vundle'

 " Bundles
 Bundle 'kien/ctrlp.vim'
 Bundle 'tomasr/molokai'
 Bundle 'altercation/vim-colors-solarized'

 filetype plugin indent on     " required!
" END Vundle

"colorscheme molokai
let g:solarized_italic = 0
colorscheme solarized
syntax on 					" syntax highlighting
language US
set langmenu=en_US.UTF-8
set fileencodings=utf-8
set mouse=a					" automatically enable mouse usage
set number
set backspace=indent,eol,start
set showmatch
set incsearch
set hlsearch
set ignorecase
set nowrap
set autoindent
set pastetoggle=<F12>

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

autocmd FileType cpp setlocal noexpandtab shiftwidth=4 softtabstop=4 tabstop=4
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4

map <C-K> :pyf C:\Program Files (x86)\LLVM\tools\clang-format\clang-format.py<CR>
imap <C-K> <ESC>:pyf C:\Program Files (x86)\LLVM 3.4.svn\tools\clang-format\clang-format.py<CR>i

" Searching using Ctrl+P
map <Leader>o :CtrlPMixed<CR>
