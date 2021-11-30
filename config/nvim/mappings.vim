imap jk <ESC>
vnoremap jk <ESC>
cnoremap jk <C-U> <ESC>

let mapleader=' '
let maplocalleader='\\'

nnoremap ; :
nnoremap : ;

nnoremap <leader>s :w<CR>

nnoremap <leader>V :tabedit $MYVIMRC<CR>

" Paste the contents of clipboard
nnoremap <C-Space> "*p

" Copy whole file to clipboard and quit Vim
nnoremap <CS-Space> gg"*yG:q!<CR>

" Rerun last shell command
nnoremap <leader>r :!<UP><CR>

" Toggle paste mode
nnoremap <leader>p :set paste!<CR>

" Mappings for manipulating and moving around splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
nnoremap <leader>h <C-w>h
nnoremap <leader>x <C-w>c
nnoremap <leader>o <C-w>o
nnoremap <leader>_ <C-w>_

nnoremap <leader>q :QuickScopeToggle<CR>

" Set CWD to current file's PWD
noremap <F12> :cd %:h<CR>

" Switch to previous buffer
noremap <F2> :b#<CR>

" Swap two words (tn - current with next word; tp - current with previous)
nnoremap <silent> <leader>tn "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o>/\w\+\_W\+<CR><c-l>:nohlsearch<CR>
nnoremap <silent> <leader>tp "_yiw?\w\+\_W\+\%#<CR>:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o><c-l>:nohlsearch<CR>

nnoremap <F7> :tabprev<CR>

" Fold all, unfold all
nnoremap <leader>e :call Fold()<CR>

function! Fold()
    let foldlvl = eval("&foldlevel")
    if(foldlvl==0)
        set foldlevel=9999
    else
        set foldlevel=0
    endif
endfunction

" Space-z to toggle folds.
nnoremap <leader>z za
vnoremap <leader>z za

" Toggle hls and matching with the <leader>N utility
"map <CR> :set hls!<CR>
nnoremap <BS> :call clearmatches()<CR>

" Show what highlight group symbol/word under cursor belongs to
nnoremap <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" .  synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" .  synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>

" Find all lines with word under cursor and give option to jump to one of the
" lines
" map <leader>f [I:let nr=input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>

" Easier movement to start and end of line
noremap  H ^
noremap  L $
vnoremap L g_

" nnoremap / /\v
" vnoremap / /\v

"nnoremap ' `
"nnoremap ` '

imap {{ {}<ESC>O
imap ,, ,<CR>

nnoremap ZQ ZZ
nnoremap ZZ ZQ

nnoremap <tab> :bn<CR>
nnoremap <s-tab> :bp<CR>
nnoremap <leader>b :Telescope buffers<CR>

" Avoid unintentional switch to Ex mode.
nnoremap Q <nop>

noremap Y y$

cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" Toggle numbers for copying text without number column
nnoremap <leader>n :call LineNumbers()<CR>

function! LineNumbers()
    set number!
    set relativenumber!
endfunction

" Remove all irrelevant lines from a bash file
" (or any file that uses # as a start of comment).
nnoremap <leader>Q :g/^#\\|\(^$\)/d<CR>

" Remove trailing whitespace
nnoremap <leader>w :%s/\s\+$//<CR>

" execute "!perl /home/bertold/Devel/Projects/wso2tools/add_artifact.pl " . system("git rev-parse --show-toplevel | tr -d '\\n'")

" Change/select object between //
onoremap <silent> i/ :<C-U>normal! T/vt/<CR>
onoremap <silent> a/ :<C-U>normal! F/vt/<CR>

xnoremap <silent> i/ :<C-U>normal! T/vt/<CR>
xnoremap <silent> a/ :<C-U>normal! F/vt/<CR>

onoremap <silent> iy :<C-U>execute "normal!?^---\r:nohlsearch\rjV/^---\rk"<cr>
onoremap <silent> ay :<C-U>execute "normal!?^---\r:nohlsearch\rV/^---\r"<cr>

xnoremap <silent> iy :<C-U>execute "normal!?^---\r:nohlsearch\rjV/^---\rk"<cr>
xnoremap <silent> ay :<C-U>execute "normal!?^---\r:nohlsearch\rV/^---\r"<cr>

" Go into mergetool mode
map <leader>d :call DiffToolMode()<CR>

function! DiffToolMode()
    set nohls
    nnoremap <leader>d :let @/='======='<CR>ggn
    nnoremap <c-down> ddd/>>>>>><cr>dd?<<<<<<<cr>dd:let @/='======='<CR>
    nnoremap <c-up> ddd?<<<<<<<cr>/>>>>>>><cr>dd:let @/='======='<CR>
endfunction

inoremap <c-l> <right>
inoremap <c-h> <left>
inoremap <c-j> <ESC>A
inoremap <c-o> <ESC>I

" Edit file even if it doesn't exist
nnoremap gf :edit <cfile><cr>

nnoremap <leader>oo :edit ~/.config/nvim/options.vim<CR>
nnoremap <leader>os :edit ~/.config/nvim/settings.vim<CR>
nnoremap <leader>of :edit ~/.config/nvim/filetypes.vim<CR>
nnoremap <leader>om :edit ~/.config/nvim/mappings.vim<CR>
nnoremap <leader>op :edit ~/.config/nvim/plugins.vim<CR>
nnoremap <leader>ot :edit ~/.config/nvim/theme.vim<CR>
