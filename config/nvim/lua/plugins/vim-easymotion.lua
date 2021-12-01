Plug 'easymotion/vim-easymotion'

let g:EasyMotion_do_mapping = 0

" Jump to anywhere you want with minimal keystrokes.
" s{char}{label}
nmap m <Plug>(easymotion-w)
nmap M <Plug>(easymotion-b)
nmap <leader><leader>j <Plug>(easymotion-bd-jk)

" Case insensitive
let g:EasyMotion_smartcase = 1

let g:EasyMotion_keys = 'asdfjkl;mvwo'
