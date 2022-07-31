local fn = vim.fn

local install_path = '/home/bertold/.local/share/nvim/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        'git',
        'clone',
        '--depth',
        '1',
        'https://github.com/wbthomason/packer.nvim',
        install_path,
    }
    print 'Installing packer...'
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand to reload neovim whenever you save plugins.lua
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile>
    augroup end
]]

local status_ok, packer = pcall(require, 'packer')
if not status_ok then
    return
end

packer.init {
    display = {
        open_fn = function()
            return require('packer.util').float { border = 'rounded' }
        end,
    },
}

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    use 'lewis6991/impatient.nvim'

    require('impatient')

    -- Color schemes
    use 'rafi/awesome-vim-colorschemes'
    use 'bluz71/vim-nightfly-guicolors'
    use 'bluz71/vim-moonfly-colors'
    use 'Mofiqul/vscode.nvim'
    use 'rebelot/kanagawa.nvim'
    use 'catppuccin/nvim'
    use 'Mofiqul/dracula.nvim'
    use 'flazz/vim-colorschemes'

    use 'nvim-lua/plenary.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'tpope/vim-vinegar'
    use 'tpope/vim-repeat'
    use 'machakann/vim-sandwich'
    use 'romainl/vim-cool'
    use 'mhinz/vim-startify'
    use 'kevinhwang91/nvim-bqf'

    use {
        'norcalli/nvim-colorizer.lua',
        event = 'BufEnter',
        config = function()
            local present, color = pcall(require, 'colorizer')
            if not present then
                return
            end

            color.setup {
                '*',
                css = { rgb_fn = true; }
            }
            vim.cmd('ColorizerAttachToBuffer')
        end
    }

    use {
        'unblevable/quick-scope',

        config = function()
            vim.g.qs_enable = 0 -- off by default
        end
    }

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- cmp plugins
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'saadparwaiz1/cmp_luasnip'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'

    -- snippets
    use 'L3MON4D3/LuaSnip'
    use 'rafamadriz/friendly-snippets'
    use 'kana/vim-textobj-user'
    use 'kana/vim-textobj-entire'
    use 'nvim-treesitter/nvim-treesitter-textobjects'

    -- Telescope
    use 'nvim-telescope/telescope.nvim'
    use 'tom-anders/telescope-vim-bookmarks.nvim'
    use 'nvim-telescope/telescope-media-files.nvim'

    -- Treesitter
    use 'nvim-treesitter/nvim-treesitter'
    use 'JoosepAlviste/nvim-ts-context-commentstring'
    use 'p00f/nvim-ts-rainbow'
    use 'nvim-treesitter/playground'
    use 'windwp/nvim-ts-autotag'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    use 'simrat39/symbols-outline.nvim'
    use {
        'folke/trouble.nvim',
        cmd = 'TroubleToggle'
    }

    use 'mfussenegger/nvim-jdtls'

    -- Git
    use 'kdheepak/lazygit.nvim'

    use { 'phaazon/hop.nvim',

        config = function()
            require('hop').setup { keys = 'asdfjkl;weio' }

            after = {
                vim.api.nvim_set_keymap('n', 'm', "<cmd>lua require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false })<CR>",
                    { noremap = true }),
                vim.api.nvim_set_keymap('n', 'M', "<cmd>lua require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false })<CR>",
                    { noremap = true }),
            }
        end
    }

    use 'Pocco81/true-zen.nvim'

    if PACKER_BOOTSTRAP then
        require('packer').sync()
    end
end)
