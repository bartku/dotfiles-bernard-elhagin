local api = vim.api

vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

api.nvim_set_keymap('i', 'jk', '<ESC>', { noremap = false })
api.nvim_set_keymap('v', 'jk', '<ESC>', { noremap = true })
api.nvim_set_keymap('c', 'jk', '<C-U> <ESC>', { noremap = true })

api.nvim_set_keymap('n', ';', ':', { noremap = true })
api.nvim_set_keymap('n', ':', ';', { noremap = true })

api.nvim_set_keymap('n', '<leader>s', ':w<CR>', { noremap = true })

api.nvim_set_keymap('n', '<leader>v', ':tabedit $MYVIMRC<CR>', { noremap = true })
api.nvim_set_keymap('n', '<leader>V', ':so $MYVIMRC<CR>',      { noremap = true })

-- paste the contents of the clipboard
api.nvim_set_keymap('n', '<C-Space>', '"*p', { noremap = true })
-- copy whole buffer to clipboard and quit
api.nvim_set_keymap('n', '<CS-Space>', 'gg"*yG:q!<CR>', { noremap = true })

-- run previous shell command
api.nvim_set_keymap('n', '<leader>r', ':!<UP><CR>', { noremap = true })
api.nvim_set_keymap('n', '<leader>p', ':set paste!<CR>', { noremap = true })

api.nvim_set_keymap('n', '<leader>j',' <C-w>j', { noremap = true })
api.nvim_set_keymap('n', '<leader>k',' <C-w>k', { noremap = true })
api.nvim_set_keymap('n', '<leader>l',' <C-w>l', { noremap = true })
api.nvim_set_keymap('n', '<leader>h',' <C-w>h', { noremap = true })
api.nvim_set_keymap('n', '<leader>x',' <C-w>c', { noremap = true })
api.nvim_set_keymap('n', '<leader>o',' <C-w>o', { noremap = true })
api.nvim_set_keymap('n', '<leader>_',' <C-w>_', { noremap = true })

api.nvim_set_keymap('n', '<leader>q',':QuickScopeToggle<CR>', { noremap = true })

api.nvim_set_keymap('n', '<F12>',' :cd %:h<CR>', { noremap = true })

api.nvim_set_keymap('n', '<F7>',' :tabprev<CR>', { noremap = true })

api.nvim_set_keymap('n', '<leader>z',' za', { noremap = true })
api.nvim_set_keymap('v', '<leader>z',' za', { noremap = true })

api.nvim_set_keymap('n', 'H','^',  { noremap = true })
api.nvim_set_keymap('n', 'L','$',  { noremap = true })
api.nvim_set_keymap('v', 'L','g_', { noremap = true })

api.nvim_set_keymap('i', '{{', '{' .. '<enter>' .. '}<ESC>O', { noremap = true })
api.nvim_set_keymap('i', ',,', ',<CR>', { noremap = true })

api.nvim_set_keymap('n', 'ZZ',' ZQ', { noremap = true })
api.nvim_set_keymap('n', 'ZQ',' ZZ', { noremap = true })

api.nvim_set_keymap('n', 'Q',' <nop>', { noremap = true })

-- command mode move to end and home like in shell
api.nvim_set_keymap('c', '<C-a>', '<Home>', { noremap = true })
api.nvim_set_keymap('c', '<C-e>', '<End>',  { noremap = true })

api.nvim_set_keymap('n', 'Y','y$', { noremap = true })

-- quickly move around in insert mode
api.nvim_set_keymap('i', '<c-l>', '<right>', { noremap = true })
api.nvim_set_keymap('i', '<c-h>', '<left>',  { noremap = true })
api.nvim_set_keymap('i', '<c-j>', '<ESC>A',  { noremap = true })
api.nvim_set_keymap('i', '<c-o>', '<ESC>I',  { noremap = true })

-- edit file even if it doesn't exist
api.nvim_set_keymap('n', 'gf',' :edit <cfile><cr>', { noremap = true })

api.nvim_set_keymap('n', '<leader>os', ':edit ~/.config/nvim/lua/settings.lua<CR>',  { noremap = true })
api.nvim_set_keymap('n', '<leader>of', ':edit ~/.config/nvim/lua/filetypes.lua<CR>', { noremap = true })
api.nvim_set_keymap('n', '<leader>om', ':edit ~/.config/nvim/lua/mappings.lua<CR>',  { noremap = true })
api.nvim_set_keymap('n', '<leader>op', ':edit ~/.config/nvim/lua/plugins.lua<CR>',   { noremap = true })
api.nvim_set_keymap('n', '<leader>ot', ':edit ~/.config/nvim/lua/theme.lua<CR>',     { noremap = true })

-- create text-object between / /
api.nvim_set_keymap('o', 'i/', ':<C-U>normal! T/vt/<CR>', { noremap = true, silent = true })
api.nvim_set_keymap('o', 'a/', ':<C-U>normal! F/vf/<CR>', { noremap = true, silent = true })
api.nvim_set_keymap('x', 'i/', ':<C-U>normal! T/vt/<CR>', { noremap = true, silent = true })
api.nvim_set_keymap('x', 'a/', ':<C-U>normal! F/vf/<CR>', { noremap = true, silent = true })

-- remove trailing whitespace
api.nvim_set_keymap('n', '<leader>w',":%s/\\s\\+$//<CR>", { noremap = true })

api.nvim_set_keymap('n', '<F10>', ':TSHighlightCapturesUnderCursor<CR>', { noremap = true })

-- Swap two words (tn - current with next word; tp - current with previous)
--api.nvim_set_keymap('n', '<leader>tn', '"_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o>/\w\+\_W\+<CR><c-l>:nohlsearch<CR>',    { noremap = true, silent = true })
--api.nvim_set_keymap('n', '<leader>tp', '"_yiw?\w\+\_W\+\%#<CR>:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o><c-l>:nohlsearch<CR>', { noremap = true, silent = true })

-- Show what highlight group symbol/word under cursor belongs to

--[[

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

nnoremap <tab> :bn<CR>
nnoremap <s-tab> :bp<CR>
nnoremap <leader>b :Telescope buffers<CR>

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

" execute "!perl /home/bertold/Devel/Projects/wso2tools/add_artifact.pl " . system("git rev-parse --show-toplevel | tr -d '\\n'")

" Change/select object between //

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

]]
