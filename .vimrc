" Basic Setup
syntax on
set nocompatible              " be iMproved, required
filetype off                  " required
set clipboard+=unnamed
filetype plugin on

" Leader
let mapleader=","

"Tab completion for file tasks, search through recursive subdirectory
set path+=**
set wildmenu
set cursorline


" Create the tags file
command! MakeTags !ctags -R .
nmap <Leader>rt :TagbarToggle<CR>
highlight Pmenu ctermbg=black guibg=black
highlight Pmenu ctermfg=white guifg=white

"File Browsing
let g:netrew_banner=0
let g:netrew_browse_split=4
let g:netrew_altv=1
let g:netrew_lifestyle=3
let g:netrew_list_hide=netrw_gitignore#Hide()
let g:netrew_list_hide=',\(^|\s\s\)\zs\.\S\+'


"Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'majutsushi/tagbar'
Plugin 'ycm-core/YouCompleteMe'
call vundle#end()

" MOVEMENT
nnoremap j gj
nnoremap k gk

" Nice Settings
set ignorecase
set smartcase
set ruler
set number
set relativenumber


" Exit insert mode fast
inoremap jk <c-c>`^
inoremap kj <c-c>`^


" TABS AND SPACES
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

" Search
set incsearch
set hlsearch


"Snippets
" hint open file with gf
nnoremap <Leader>html :-1read $HOME/.vim_templates/html_template<CR>3jwf>a
