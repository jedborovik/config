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
set backspace=indent,eol,start

let mapleader = "\\"

imap jj <Esc>
imap kk <C-N>
nnoremap ; :
nnoremap : ;
nnoremap ,p o<ESC>p
nnoremap ,P O<ESC>p

" space bar folds (if fold present)
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>

" Moving between buffers
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

command! Eighty :silent!:execute ':highlight OverLength ctermbg=red ctermfg=white guibg=#592929 | :match OverLength /\%81v.\+/'

" Vundle goodness
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

Plugin 'mattn/emmet-vim'
Plugin 'bufexplorer.zip'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'pangloss/vim-javascript'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'digitaltoad/vim-jade'
Plugin 'tComment'
Plugin 'kchmck/vim-coffee-script'
" Plugin 'AutoClose'

" Add plugins before the following line
call vundle#end()
filetype plugin indent on

nnoremap // :TComment<CR>
vnoremap // :TComment<CR>


syntax enable
set background=dark
colorscheme solarized

" Correctly color less files
au BufNewFile,BufRead *.less set filetype=css

" Correctly color Gemfiles
au BufNewFile,BufRead Gemfile* set filetype=ruby

" vim-mustache-handlebars plugin doesn't color .hbs files
au BufNewFile,BufRead *.hbs set filetype=mustache
let g:mustache_abbreviations = 1  " allow vim-mustache-handlebars commands

" vim-jade doesn't automatically detect jade files, so set filetype manually
au BufNewFile,BufRead *.jade set filetype=jade
" Set indent folding for jade files
au BufNewFile,BufRead *.jade set set foldmethod=indent

" Open all folds by default
au BufRead * normal zR
