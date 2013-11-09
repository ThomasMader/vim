" BEGIN Vundle
set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " Bundles
 Bundle 'kien/ctrlp.vim'
 Bundle 'tomasr/molokai'

 filetype plugin indent on     " required!
" END Vundle

colorscheme molokai

" Searching using Ctrl+P
map <Leader>o :CtrlPMixed<CR>

