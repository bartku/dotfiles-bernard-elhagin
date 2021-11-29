Plug 'NTBBloodbath/rest.nvim'

function Rest()
lua << REST
    requires = { 'nvim-lua/plenary.vim' },
        require('rest-nvim').setup({
            -- Open request result in a horizontal split
            result_split_horizontal = true,
            -- Skip SSL verification
            skip_ssl_verification = true,
            highlight = {
                enabled = true,
                timeout = 150
            },
            result = {
                show_url = true,
                show_http_info = true,
                show_headers = true
            },
            jump_to_request = false,
            env_file = '.env',
            custom_dynamic_variables = {}
    })
REST
endfunction

augroup Rest
    autocmd!
    autocmd User PlugLoaded call Rest()
augroup END

