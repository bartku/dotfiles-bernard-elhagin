Plug 'tpope/vim-fugitive'

nnoremap <leader>gs :silent Git<cr>
nnoremap <leader>gp :silent Gpull<cr>
nnoremap <leader>gd :silent Gdiff<cr>
nnoremap <leader>gw :silent Gwrite<cr>
nnoremap <leader>gb :silent Gblame<cr>
nnoremap <leader>gc :silent Gcommit<cr>
nnoremap <leader>gl :silent Shell git gl -18<cr>:wincmd \|<cr>

let g:gitgutter_map_keys = 0
