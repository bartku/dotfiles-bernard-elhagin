Plug 'neovim/nvim-lspconfig'

function LspConfigSetup()
lua << LSPCONFIG
    require'lspconfig'.vimls.setup { }
LSPCONFIG
endfunction

augroup LspConfigSetup
    autocmd!
    autocmd User PlugLoaded call LspConfigSetup()
augroup END
