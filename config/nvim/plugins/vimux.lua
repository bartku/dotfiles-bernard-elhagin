Plug 'benmills/vimux'

let g:VimuxOrientation="h"
let g:VimuxHeight="35"

noremap <leader>vm :VimuxRunCommand("makeSpace.sh")<CR>
noremap <leader>vc :VimuxCloseRunner<CR>
noremap <leader>vr :VimuxRunLastCommand<CR>
noremap <leader>vi :VimuxInterruptRunner<CR>
