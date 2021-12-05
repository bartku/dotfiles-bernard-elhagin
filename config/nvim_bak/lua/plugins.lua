local execute = vim.api.nvim_command
local fn = vim.fn

local packer_install_dir = '/home/bertold/.local/share/nvim/site/pack/packer/start/packer.nvim'

local plug_url_format = 'https://github.com/%s'

local packer_repo = string.format(plug_url_format, 'wbthomason/packer.nvim')
local install_cmd = string.format('10split |term git clone --depth=1 %s %s', packer_repo, packer_install_dir)

if fn.empty(fn.glob(packer_install_dir)) > 0 then
  vim.api.nvim_echo({{'Installing packer.nvim', 'Type'}}, true, {})
  execute(install_cmd)
  execute 'packadd packer.nvim'
end

vim.cmd [[packadd packer.nvim]]

require('packer').init {
    display = {
        open_fn = function()
            return require('packer.util').float { border = 'rounded' }
        end
    }
}

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    -- Color schemes
    use 'folke/tokyonight.nvim'
    use 'bluz71/vim-nightfly-guicolors'
    use 'bluz71/vim-moonfly-colors'
    use 'shaunsingh/nord.nvim'
    use 'navarasu/onedark.nvim'
    use 'wuelnerdotexe/vim-enfocado'
    use 'marko-cerovac/material.nvim'
    use 'rafi/awesome-vim-colorschemes'
    use 'chriskempson/base16-vim'
    use 'rebelot/kanagawa.nvim'
    use 'whatsthatsmell/codesmell_dark.vim'
    use 'sainnhe/edge'

    use 'dyng/ctrlsf.vim'
    use 'whiteinge/diffconflicts'
    use 'gregsexton/gitv'
    use 'sjl/gundo.vim'
    use 'chrisbra/NrrwRgn'
    use 'kyazdani42/nvim-web-devicons'
    use 'nvim-lua/plenary.nvim'
    use 'godlygeek/tabular'
    use 'markonm/traces.vim'
    use 'mhinz/vim-startify'
    use 'romainl/vim-cool'
    use 'tpope/vim-vinegar'
    use 'xolox/vim-misc'
    use 'sheerun/vim-polyglot'
    use 'prettier/vim-prettier'
    use 'tpope/vim-repeat'
    use 'airblade/vim-rooter'
    use 'machakann/vim-sandwich'
    use 'thinca/vim-textobj-between'
    use 'kana/vim-textobj-entire'
    use 'kana/vim-textobj-user'
    use 'p00f/nvim-ts-rainbow'
    use 'github/copilot.vim'

    use { 'kevinhwang91/nvim-bqf', ft = 'qf' }

    use { 'folke/twilight.nvim',
        config  = function()
            require('twilight').setup()
        end
    }

    use { 'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use { 'williamboman/nvim-lsp-installer',
        config = function()
            require('plugins/lsp_installer')
        end
    }

    use { 'nvim-treesitter/nvim-treesitter',
        config = function()
            require('plugins/treesitter')
        end,
        run = ':TSUpdate'
    }

    use 'nvim-treesitter/nvim-treesitter-textobjects'
    use 'nvim-treesitter/playground' -- needed for TSHighlightCapturesUnderCursor

    use { 'sbdchd/neoformat',
        cmd = 'Neoformat'
    }

    use { 'unblevable/quick-scope',

        config = function()
            vim.g.qs_enable = 0 -- off by default
        end
    }

    use { 'nvim-telescope/telescope.nvim',
        config = function()
            require('plugins/telescope')
        end
    }

    use { 'nvim-telescope/telescope-fzy-native.nvim' }

    use { 'nvim-lua/popup.nvim',
        after = 'telescope-fzy-native.nvim'
    }

    use { 'benmills/vimux',

        config = function()
            vim.g.VimuxOrientation = 'v'
            vim.g.VimuxHeight = '7'

            after = {
                vim.api.nvim_set_keymap('n', '<leader>vm', ':VimuxRunCommand("makeSpace.sh")<CR>', { noremap = true }),
                vim.api.nvim_set_keymap('n', '<leader>vc', ':VimuxCloseRunner<CR>',                { noremap = true }),
                vim.api.nvim_set_keymap('n', '<leader>vr', ':VimuxRunLastCommand<CR>',             { noremap = true }),
                vim.api.nvim_set_keymap('n', '<leader>vi', ':VimuxInterruptRunner<CR>',            { noremap = true })
            }
        end
    }

    use { 'rhysd/clever-f.vim',

        config = function()
            vim.g.clever_f_across_no_line = 1
            vim.g.clever_f_smart_case     = 0
            vim.g.clever_f_mark_direct    = 0
            vim.g.clever_f_mark_char      = 1
        end
    }

    use { 'hrsh7th/nvim-cmp',
        requires = {
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-path' },
            { 'hrsh7th/cmp-nvim-lua' },
            { 'ray-x/cmp-treesitter' },
            { 'f3fora/cmp-spell' },
            { 'hrsh7th/cmp-calc' },
            { 'hrsh7th/cmp-cmdline' },
            { 'hrsh7th/cmp-nvim-lsp-document-symbol' },
            { 'tamago324/cmp-zsh' }
      },
    }

    use { 'neovim/nvim-lspconfig',

        config = function()
            require'lspconfig'.vimls.setup { }
            require'lspconfig'.cssls.setup { }
            require'lspconfig'.html.setup { }
            require'lspconfig'.tsserver.setup { }
            require'lspconfig'.sumneko_lua.setup {
                cmd = { '/home/bertold/.local/share/nvim/lsp_servers/sumneko_lua/extension/server/bin/lua-language-server', '-E',
                        '/home/bertold/.local/share/nvim/lsp_servers/sumneko_lua/extension/server/bin/main.lua' },
                settings = {
                    Lua = {
                        runtime =  {
                            version = 'LuaJIT',
                            path = '/usr/bin/luajit'
                        },
                        completion = { callSnippet = 'Both' },
                        diagnostics = {
                            globals = { 'vim', 'use' }
                        },
                        workspace = {
                            library = {
                                [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                                [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true
                            },
                            maxPreload = 2000,
                            preloadFileSize = 50000
                        },
                        telemetry = { enable = false }
                    }
                }
            }
        end
    }

    use 'mfussenegger/nvim-jdtls'

    use { 'rafamadriz/friendly-snippets',
        event = 'InsertEnter'
    }

    use 'onsails/lspkind-nvim'

    use { 'akinsho/nvim-bufferline.lua',
        after = 'nvim-web-devicons',
        config  = function()
            require('plugins/bufferline')
        end
    }

    use { 'nvim-lualine/lualine.nvim',

        config = function()
            requires = { 'kyazdani42/nvim-web-devicons', opt = true }
            require('lualine').setup({
                options = { theme = 'dracula' }
            })
        end
    }

    use { 'norcalli/nvim-colorizer.lua',
        event = 'BufEnter',
        config = function()
            require('plugins/colorize')
            vim.cmd('ColorizerAttachToBuffer')
        end
    }

    use { 'phaazon/hop.nvim',

        config = function()
            require('hop').setup { keys = 'asdfjkl;weio' }

            after = {
                vim.api.nvim_set_keymap('n', 'm', "<cmd>lua require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR,  current_line_only = false})<CR>",
                    { noremap = true }),
                vim.api.nvim_set_keymap('n', 'M', "<cmd>lua require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false})<CR>",
                    { noremap = true }),
            }
        end
    }

    use { 'windwp/nvim-ts-autotag',
        filetypes = { 'html', 'xml', 'javascript' }
    }

    use { 'windwp/nvim-autopairs',
        after = 'nvim-cmp',
        config = function()
            require('nvim-autopairs').setup()
        end
    }

    use { 'jghauser/mkdir.nvim',
        cmd = 'new',
        config = function ()
            require('mkdir')
        end
    }

    use { 'folke/which-key.nvim',
        event = 'VimEnter',
        config = function()
            require('which-key').setup()
        end
    }

    use { 'Pocco81/TrueZen.nvim',
        cmd = {
            'TZFocus',
            'TZAtaraxis',
            'TZMinimalist'
        },
        setup = function()
            require('plugins/true-zen')
        end

    }

    use 'andymass/vim-matchup'
    use 'nathom/filetype.nvim'

    use { 'lewis6991/impatient.nvim',
        require'impatient'.enable_profile()
    }

end)
