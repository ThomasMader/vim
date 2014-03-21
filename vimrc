" Vim 7.4+ finds this config file automatically if placed under '~/vimfiles'.
" Older versions require the config file to be placed in the home directory
" with the name '_vimrc'.
" An easy workaround for older versions is to create a '~/_vimrc' file
" containing the following line: source ~/vimfiles/vimrc
" This way the vimrc can stay in the folder and changes are easily manageable
" by git.
"
" Vundle is used to manage the plugins. It's the only plugin contained in the
" git repository, therefore it's necessary to install all other plugins
" defined in this config by running ':BundleInstall' in Ex-mode the first time
" you start vim.

" The following two are required by Vundle
set nocompatible
filetype off

" Differences between Windows and Linux
if has('win32') || has('win64')
    set rtp+=~/vimfiles/bundle/vundle/
    let path='~/vimfiles/bundle'
    call vundle#rc(path)
    language US
else
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
    language en_US.UTF-8
endif


"  We manage the vundle version in our own repo for now so we don't need it
"  here
" Bundle 'gmarik/vundle'

" Bundles from github.com
Bundle 'kien/ctrlp.vim'
Bundle 'bling/vim-airline'
Bundle 'tomasr/molokai'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomtom/tcomment_vim'

" Bundles from vim-scripts.org
Bundle 'a.vim'

" Required by Vundle
 filetype plugin indent on
" END Vundle

" Use Windows behavior on all platforms for now
source $VIMRUNTIME/mswin.vim
behave mswin

let g:airline_powerline_fonts = 1
let g:solarized_italic = 0
colorscheme solarized
set background=dark
syntax on
set langmenu=en_US.UTF-8
set fileencodings=utf-8
set mouse=a
set number
set backspace=indent,eol,start
set showmatch
set incsearch
set hlsearch
set ignorecase
set scroll=3
set colorcolumn=80
set laststatus=2
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

