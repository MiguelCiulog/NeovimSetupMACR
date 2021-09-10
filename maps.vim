" MAPS NEOVIM MACR

" CTRL-x to cut
vnoremap <c-x> "+x

" Open a new tab in the directory
nmap te :tabedit
nmap <silent><S-Tab> :tabnext<Return>
" nmap <Tab> :tabnext<Return>

" Ctrl + h and ctrl + l uses word skip
nnoremap <c-h> b
nnoremap <c-l> w
vnoremap <c-h> b
vnoremap <c-l> w

" Delete without yank
nnoremap <leader>d "_d
vnoremap <leader>d "_d
onoremap <leader>d "_d
nnoremap x "_x

" Paste the last thing yanked, not deleted
nnoremap <space>p "0p
nnoremap <leader>P "0P
nnoremap <S-C-p> "0p
nnoremap <S-C-v> "0p
" nmap ,P "0P

" Select everything ggVG
nnoremap <c-a> ggVG

" Copy with ctrl+c
vnoremap <C-c> y

" Remap go to end of line ($) and go to start of line (^)
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L $

" Undo with c-u
nmap <c-U> :later<CR>

" Remap replace to ctrl + r
nmap <c-r> <Plug>(coc-rename)
" nmap <leader>rn <Plug>(coc-rename)

if exists('g:vscode')
    " VSCode extension
    " Create default mappings for commenting lines
    nmap F <Plug>VSCodeCommentary
    xmap F <Plug>VSCodeCommentary
    "Activate rainbow brackets pairs
    let g:rainbow_active = 0
else
    "Activate rainbow brackets pairs
    let g:rainbow_active = 1
    " ordinary neovim
    " Create default mappings for commenting lines
    nmap F :Commentary<Enter>
    xmap F :Commentary<Enter>
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

" Copy the previous line and put it up or down
nnoremap <cs-Up> Yp
" nnoremap <c-K> Yp
nnoremap <cs-Down> Yp
" nnoremap <c-J> Yp

vnoremap <cs-Up> Yp
" vnoremap <c-K> Yp
vnoremap <cs-Down> Yp
" vnoremap <c-J> Yp

" Change default from enter to space
" The 0_"D is for deleting comments on the start of the line
" noremap <Space><Space> <Enter>
" noremap <Space> o<esc>0"_D
noremap s o<esc>0"_D
noremap S O<esc>0"_D

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


