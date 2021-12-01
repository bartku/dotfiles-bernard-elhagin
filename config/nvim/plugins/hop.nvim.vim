Plug 'phaazon/hop.nvim'

function HopSetup()
lua << HOP
    require('hop').setup()
HOP

nnoremap m :HopWord<CR>
nnoremap <leader><leader>j :HopLine<CR>

endfunction

augroup HopSetup
    autocmd!
    autocmd User PlugLoaded call HopSetup()
augroup END
