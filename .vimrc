syntax on
set nocompatible              " be iMproved, required
filetype off                  " required
set clipboard=unnamed
" Leader
let mapleader=","

" Commenter
" ,c<space> for toggle; ,cc for comment; ,cu for uncomment
map <Leader>n :NERDTreeToggle<CR>
highlight Pmenu ctermbg=black guibg=black
highlight Pmenu ctermfg=white guifg=white
nmap <Leader>rt :TagbarToggle<CR>

" VUNDLE
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'majutsushi/tagbar'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Valloric/YouCompleteMe'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'bronson/vim-trailing-whitespace'
call vundle#end()
 "Plugin 'vim-syntastic/syntastic'
 Plugin 'nvie/vim-flake8'
"END VUNDLE
set runtimepath^=~/.vim/bundle/ctrlp.vim
execute pathogen#infect('~/.vim/pathogen_bundles/{}')
" For git gutter
set updatetime=100
"Display
set laststatus=2

" TABS AND SPACES
filetype plugin on
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" tab length while editing doc
set softtabstop=4

" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set backspace=indent,eol,start

" " MOUSE Functionality in OSX
set mouse=a


" SYNTAX and HIGHLIGHTING
syntax enable
set cursorline
set showmatch 
set wildmenu


" SEARCH
set incsearch
set hlsearch

" MOVEMENT
nnoremap j gj
nnoremap k gk

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set clipboard+=unnamed
set ignorecase
set smartcase
set ruler
set number
map <C-a> <ESC>^
imap <C-a> <ESC>I
map <C-e> <ESC>$
imap <C-e> <ESC>A
inoremap jk <c-c>`^
inoremap kj <c-c>`^

" For Views: command zf and zo (fold and open)
" autocmd BufWinLeave * mkview
" autocmd BufWinEnter * silent loadview
