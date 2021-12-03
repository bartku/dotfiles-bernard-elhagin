Plug 'lewis6991/gitsigns.nvim'

function GitSignsSetup()
lua << GITSIGNS
    require('gitsigns').setup()
GITSIGNS
endfunction

augroup GitSignsSetup
    autocmd!
    autocmd User PlugLoaded call GitSignsSetup()
augroup END
