set number
call plug#begin()

Plug 'drewtempelmeyer/palenight.vim'
Plug 'vim-airline/vim-airline'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'preservim/tagbar'
Plug 'universal-ctags/ctags'
Plug 'rust-lang/rust.vim'
Plug 'lifepillar/vim-gruvbox8'
Plug 'tpope/vim-commentary'
Plug 'luochen1990/rainbow'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()

syntax enable
filetype plugin indent on
filetype plugin on
set ruler
let g:rainbow_active = 1
" Set scroll with cursor
set scrolloff=5

" Use system clipboard
set clipboard^=unnamed,unnamedplus

" Use space as leader key
nnoremap <Space> <Nop>
let mapleader = " "

" Use ctrl [left or right] to select
" inoremap <c-left> <esc>vb
" inoremap <c-right> <esc>ve
" inoremap <c-H> <esc>vb
" inoremap <c-L> <esc>ve
" vmap <c-L> ve

set smartcase
set ignorecase
set smarttab

set fillchars+=vert:#

" Autoindent
set ai

" Smart indent
set si

set shiftwidth=2
set tabstop=2

" Lines dont wrap (Go to the next "line")
set nowrap

set background=dark

colorscheme palenight

" Have mouse available to use
set mouse=a

" Remove trailing whitespace on write
autocmd BufWritePre * %s/\s\+$//e

" Paste on left side, not on right side
" nnoremap p P
" nnoremap P p
" map <c-v> "+gP

" Add an empty line on the next line
" nmap <c-k> o<esc>0"_Dk
" nmap K o<esc>0"_Dk
" nmap K i<CR><esc>

" Be able to use tab to add tabs

" Vertically center the document when entering insert mode :)
" autocmd InsertEnter * norm zz

"let g:gruvbox_contrast_dark = 'medium'
"let g:gruvbox_transparent_bg = '1' colorscheme palenight
" colorscheme gruvbox8

" Add mappings
runtime ./maps.vim

" Set default splits to down and right
set splitbelow splitright

" VSCode
" exists('g:vscode')
