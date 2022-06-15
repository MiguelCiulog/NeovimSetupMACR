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

set enc=utf-8

" Relative numbers
set nu rnu

syntax enable
filetype plugin indent on
filetype plugin on
set ruler
set signcolumn=yes

set cursorline " highlight current cursorline

" Set scroll with cursor
set scrolloff=6

" Use system clipboard
set clipboard+=unnamedplus

" Use space as leader key
nnoremap <Space> <Nop>
let mapleader = " "

" CocConfig stuff
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" allow buffer switching without saving
set hidden

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" set an 80 column border for good coding style
set cc=80

" Used for search
set smartcase
set ignorecase

" Inserts tabs
set smarttab

set enc=utf-8
set fillchars=vert:\■ 

" Autoindent
set autoindent

" Smart indent
set si

" Inserts tabs as spaces
set smarttab

set fillchars=vert:\~ 

" Tab settings
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab

" Smart indentation
set smartindent

" Lines dont wrap (Go to the next "line")
set nowrap

set background=dark

set termguicolors
let ayucolor="mirage"
colorscheme ayu
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

set signcolumn=yes

" Remove background
" hi Normal guibg=none
" hi NonText guibg=none

" TODO: Be able to use tab to add tabs

" Add mappings
runtime ./maps.vim
