syntax on
filetype off                  " required
" set clipboard+=unnamed
filetype plugin on

" Leader
let mapleader=","

" File search
if has("wildmenu")
    set wildignore+=*.a,*.o,*.out
    set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.pdf
    set wildignore+=.DS_Store,.git,.hg,.svn
    set wildignore+=*~,*.swp,*.tmp
    set wildmenu
    set wildmode=full
    " ctrl e to accept the result and continue browsing
endif


"File Browsing
let g:netrew_banner=0
let g:netrew_browse_split=4
let g:netrew_altv=1
let g:netrew_lifestyle=3
let g:netrew_list_hide=netrw_gitignore#Hide()
let g:netrew_list_hide=',\(^|\s\s\)\zs\.\S\+'


" Exit insert mode fast
inoremap jk <c-c>`^
inoremap kj <c-c>`^

" Create the tags file
command! MakeTags !ctags -R .
nmap <Leader>rt :TagbarToggle<CR>
highlight Pmenu ctermbg=black guibg=black
highlight Pmenu ctermfg=white guifg=white

" Editing
set cursorline
set ruler
nnoremap j gj
nnoremap k gk
set relativenumber
set number
set title
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
set virtualedit=block
set showmatch
set guicursor=
set hidden

" TABS AND SPACES
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" tab length while editing doc
set softtabstop=4

" when indenting with '>', use 4 spaces width
set shiftwidth=4
" Round indentation to nearest shiftwidth
set shiftround  

" On pressing tab, insert 4 spaces
set expandtab
set backspace=indent,eol,start

" " MOUSE Functionality in OSX
set mouse=a

" Backups and cache
set dir=~/.cache/vim
set backupdir=~/.cache/vim

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase

" Code Folding
set foldmethod=indent
set foldnestmax=3
set nofoldenable
nnoremap <Leader>html :-1read $HOME/.vim_templates/html_template<CR>3jwf>a

call plug#begin(stdpath('data') . '/plugged')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
call plug#end()


" For coc.nvi
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes
noremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

