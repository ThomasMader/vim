" The following two are required by Vundle
set nocompatible
filetype off

" Differences between Windows and Linux
if has('win32') || has('win64')
    set rtp+=~/vimfiles/bundle/vundle/
    let path='~/vimfiles/bundle'
    call vundle#rc(path)
    language US
    set guifont=DejaVu_Sans_Mono:h11
    if exists("*mkdir")
        if !isdirectory($HOME . "/vimfiles/backup")
            call mkdir($HOME . "/vimfiles/backup")
        endif
            set backupdir=~/vimfiles/backup//
        if !isdirectory($HOME . "/vimfiles/swap")
            call mkdir($HOME . "/vimfiles/swap")
        endif
        set directory=~/vimfiles/swap//
        if !isdirectory($HOME . "/vimfiles/undo")
            call mkdir($HOME . "/vimfiles/undo")
        endif
        set undodir=~/vimfiles/undo//
    endif
else
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
    language en_US.UTF-8
    set guifont=DejaVu\ Sans\ Mono\ 11
    if exists("*mkdir")
        if !isdirectory($HOME . "/.vim/backup")
            call mkdir($HOME . "/.vim/backup")
        endif
            set backupdir=~/.vim/backup//
        if !isdirectory($HOME . "/.vim/swap")
            call mkdir($HOME . "/.vim/swap")
        endif
        set directory=~/.vim/swap//
        if !isdirectory($HOME . "/.vim/undo")
            call mkdir($HOME . "/.vim/undo")
        endif
        set undodir=~/.vim/undo//
    endif
endif



"  We manage the vundle version in our own repo for now so we don't need it
"  here
" Bundle 'gmarik/vundle'

" Bundles from github.com
Bundle 'kien/ctrlp.vim'
Bundle 'FelikZ/ctrlp-py-matcher'
Bundle 'bling/vim-airline'
Bundle 'tomasr/molokai'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-fugitive'
Bundle 'terryma/vim-smooth-scroll'
Bundle 'troydm/easybuffer.vim'
Bundle 'terryma/vim-multiple-cursors'
" Needs ag binary installed additionally
Bundle 'rking/ag.vim'
" Bundle 'Valloric/YouCompleteMe'

" Bundles from vim-scripts.org
Bundle 'a.vim'

" Required by Vundle
 filetype plugin indent on
" END Vundle

set guioptions-=m "remove menu bar
set guioptions-=T "remove toolbar
set guioptions-=r "remove right-hand scroll bar
set guioptions-=L "remove left-hand scroll bar

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.paste = ''
let g:airline_symbols.paste = ''
let g:airline_symbols.paste = ''
let g:airline_symbols.whitespace = ''

let g:solarized_italic = 0
colorscheme solarized
set background=dark
syntax on
set langmenu=en_US.UTF-8
set encoding=utf-8
set fileencodings=utf-8
set mouse=a
set number
set backspace=indent,eol,start
set showmatch
set incsearch
set hlsearch
set ignorecase
"set scrolloff=10
set sidescroll=1
"set sidescrolloff=20
set history=1000
set colorcolumn=80
set laststatus=2
set autoindent
set pastetoggle=<F12>

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

autocmd FileType cpp setlocal noexpandtab shiftwidth=4 softtabstop=4 tabstop=4
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4

noremap! <S-CR> <Esc>
noremap <S-CR> <Esc>

noremap <silent> <M-k> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <M-j> :call smooth_scroll#down(&scroll, 0, 2)<CR>

noremap <silent> <C-l> :EasyBuffer<CR>

"map <C-K> :pyf C:\Program Files (x86)\LLVM\tools\clang-format\clang-format.py<CR>
"imap <C-K> <ESC>:pyf C:\Program Files (x86)\LLVM 3.4.svn\tools\clang-format\clang-format.py<CR>i

let g:ctrlp_map = '<C-k>'
let g:ctrlp_max_files = 0
let g:ctrlp_by_filename = 1
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
let g:ctrlp_use_caching = 0
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Searching using Ctrl+P
map <Leader>o :CtrlPMixed<CR>

let g:ycm_autoclose_preview_window_after_completion = 1

" Setup tags option to actually use the generated ctags
"set tags=$REPOSITORY_BASE\source\cpp\Libraries.ctags,$REPOSITORY_BASE\source\cpp\Components.ctags,$REPOSITORY_BASE\source\cpp\Applications.ctags,$REPOSITORY_BASE\source\cpp\Corba.ctags

" Updating tags on startup for cpp and hpp files
"silent !start /MIN python C:\Users\tma\vimfiles\generatectags.py Libraries Components Applications Corba

"set makeprg=ProjectWalker\ -p\ -f\ \&\&\ jam\ -q\ first\ \&\&\ jam\ -j8\ -q\ -g
"map <F6> :echo "Regenerating ctags in the background." \| silent !start /MIN python C:\Users\tma\vimfiles\generatectags.py Libraries Components Applications<CR>
":echo fnamemodify( expand( $MYVIMRC ), ':p:h' )
"map <S-F6> :echo "Regenerating ctags ..." \| !python C:\Users\tma\vimfiles\generatectags.py Libraries Components Applications<CR>
