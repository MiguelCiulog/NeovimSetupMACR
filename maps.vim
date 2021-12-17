" MAPS NEOVIM MACR

" CTRL-x to cut
vnoremap <c-x> "+x

" Open a new tab in the directory
nmap te :tabedit
nmap <silent><S-Tab> :tabnext<Return>
" nmap <Tab> :tabnext<Return>

" Ctrl + h and ctrl + l uses word skip
" nnoremap <c-h> b
" nnoremap <c-l> w
" vnoremap <c-h> b
" vnoremap <c-l> w

" Remap C-c to <esc>
nmap <c-c> <esc>
imap <c-c> <esc>
vmap <c-c> <esc>
omap <c-c> <esc>

" Delete without yank
nnoremap <leader>d "_d
vnoremap <leader>d "_d
onoremap <leader>d "_d
nnoremap x "_x

" Paste the last thing yanked, not deleted
nnoremap <leader>p "0p
nnoremap <leader>P "0P
" nnoremap <S-C-p> "0p
" nnoremap <S-C-v> "0p
" nmap ,P "0P

" Paste in insert mode
inoremap <c-v> <Esc>pa

" Select everything ggVG
nnoremap <c-a> ggVG

" Copy with ctrl+c
" vnoremap <C-c> y

" Remap go to end of line ($) and go to start of line (^)
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L $

if exists('g:vscode')
    " VSCode extension
    " Create default mappings for commenting lines
    nmap F <Plug>VSCodeCommentaryLine
    xmap F <Plug>VSCodeCommentary
    " Undo with c-u
    " nmap <c-U> :redo<CR>
    "Activate rainbow brackets pairs
    let g:rainbow_active = 0
else
    "Activate rainbow brackets pairs
    let g:rainbow_active = 1
    " ordinary neovim
    " Create default mappings for commenting lines
    nmap <silent>F :Commentary<Enter>
    xmap <silent>F :Commentary<Enter>
    " Undo with c-u
    " nmap <c-U> :later<CR>

    " Use <c-space> to trigger completion.
    inoremap <silent><expr> <c-space> coc#refresh()
    runtime ./plugmaps.vim
    " runtime ./pluginsmaps.vim
endif


" Use f3 to search
set hlsearch!
nnoremap <Silent><F3> :set hlsearch!<CR>

" c-s to save in normal mode
nnoremap <c-s> :w<Enter>

" Press s to add an extra line
" The o<Esc>^Da is for deleting comments on the start of the line

nnoremap s o<Esc>^"_D
nnoremap S O<Esc>^"_D
noremap <Leader>s o<space><esc>
noremap <Leader>S O<space><esc>

" Backspace in visual mode deletes selection
vnoremap <BS> d

" Map F8 to Tagbar
" nmap <F8> :TagbarToggle<CR>

" Use ctrl-[ijkl] to select the active split!
" nmap <silent> <c-i> :wincmd k<CR>
" nmap <silent> <c-k> :wincmd j<CR>
" nmap <silent> <c-j> :wincmd h<CR>
" nmap <silent> <c-l> :wincmd l<CR>
nmap <silent> <c-up> :wincmd k<CR>
nmap <silent> <c-down> :wincmd j<CR>
nmap <silent> <c-left> :wincmd h<CR>
nmap <silent> <c-right> :wincmd l<CR>

" Remap replace to ctrl + r
nmap <F2> <Plug>(coc-rename)

" active c-backspace and alt-basckspace to delete
" asd1 asd2 asd3
inoremap <C-H> <C-W>
inoremap <C-Del> <C-o>dw

" Save as sudo
command W :execute 'SudaWrite'
