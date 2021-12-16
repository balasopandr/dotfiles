" indentation
set autoindent
set expandtab
filetype indent on
set shiftround
set shiftwidth=4
set smarttab
set tabstop=4
" search
set hlsearch
set ignorecase
set incsearch
set smartcase
" text rendering
set display+=lastline
set encoding=utf-8
set linebreak
set scrolloff=1
set sidescrolloff=5
syntax enable
set wrap
" UI
set laststatus=2
set ruler
set wildmenu
set tabpagemax=50
set cursorline
hi CursorLineNR term=NONE cterm=NONE
hi CursorLine term=bold cterm=bold guibg=White
set number
set relativenumber
set mouse=a
set title
" Miscellaneous
set autoread
set confirm

call plug#begin()
Plug 'rust-lang/rust.vim'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'cespare/vim-toml'
call plug#end()

if executable('rls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'rls',
        \ 'cmd': {server_info->['rustup', 'run', 'nightly', 'rls']},
        \ 'whitelist': ['rust'],
        \ })
endif
