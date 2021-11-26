Plug 'AckslD/nvim-neoclip.lua'

function NeoclipSetup()
lua << NEOCLIP
    require('neoclip').setup()
    require('telescope').load_extension('neoclip')
NEOCLIP
endfunction

augroup NeoclipSetup
    autocmd!
    autocmd User PlugLoaded call NeoclipSetup()
augroup END
