call plug#begin()

" Theme ayu
Plug 'ayu-theme/ayu-vim'
Plug 'overcache/NeoSolarized'

" Top line
" Plug 'vim-airline/vim-airline'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }

" Bottom line :)
Plug 'nvim-lualine/lualine.nvim'
" Plug 'itchyny/lightline.vim'
" Plug 'mengelbrecht/lightline-bufferline'

" Language package
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plug 'morhetz/gruvbox'
Plug 'tpope/vim-commentary'
Plug 'lukas-reineke/indent-blankline.nvim'

" For Telescope (Plenary.nvim)
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

Plug 'lambdalisue/suda.vim'
call plug#end()

" Relative numbers
set nu rnu

syntax enable
filetype plugin indent on
filetype plugin on
set ruler

set cursorline " highlight current cursorline

" Set scroll with cursor
" set scrolloff=5

" Use system clipboard
set clipboard+=unnamedplus

" Use space as leader key
nnoremap <Space> <Nop>
let mapleader = " "

" allow buffer switching without saving
set hidden

" set an 80 column border for good coding style
set cc=80

" Used for search
set smartcase
set ignorecase

" Inserts tabs
set smarttab

set enc=utf-8
set fillchars=vert:\~ 

" Autoindent
set autoindent

" Smart indent
set si

set shiftwidth=2
set tabstop=2

" Lines dont wrap (Go to the next "line")
set nowrap

set background=dark

set termguicolors
let ayucolor="mirage"
colorscheme ayu
" let g:neosolarized_vertSplitBgTrans = 1
" colorscheme NeoSolarized

" Change default # used in vertical splits to a diferent color 
highlight VertSplit guifg=#3d4751
" let g:lightline = {
"       \'colorscheme': 'ayu',
" 			\
" 			\ 'active': {
" 			\   'left': [ [ 'mode', 'paste' ],
" 			\ [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
" 			\ },
" 			\
" 			\ 'component_function': {
" 			\   'cocstatus': 'coc#status'
" 			\ },
" 			\ }

" autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

" Have mouse available to use
set mouse=a

" Remove trailing whitespace on write
" autocmd BufWritePre * %s/\s\+$//e

" Function to trim extra whitespace in whole file
function! Trim()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

command! -nargs=0 Trim call Trim()

" Paste on left side, not on right side
" Optional
" nnoremap p P
" nnoremap P p

" Set default splits to down and right
set splitbelow splitright

" TODO: Be able to use tab to add tabs

" Add mappings
runtime ./maps.vim
