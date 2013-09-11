set nocompatible
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set smarttab
set softtabstop=2
set number
set laststatus=2
set statusline=%F
set mouse=a    " enable mouse support

let mapleader = "\\"

imap jj <Esc>
imap kk <C-N>
nnoremap ; :
nnoremap : ;

" Moving between buffers
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

command! Eighty :silent!:execute ':highlight OverLength ctermbg=red ctermfg=white guibg=#592929 | :match OverLength /\%81v.\+/'

" Vundle goodness
filetype off                   " required!
filetype plugin indent on     " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

Bundle "bufexplorer.zip"
Bundle "scrooloose/syntastic"
Bundle "scrooloose/nerdtree"
Bundle "altercation/vim-colors-solarized"

syntax enable
set background=dark
colorscheme solarized
