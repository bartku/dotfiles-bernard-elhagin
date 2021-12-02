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

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    use 'rafi/awesome-vim-colorschemes'
    use 'chriskempson/base16-vim'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-path'
    use 'vim-scripts/CSApprox'
    use 'dyng/ctrlsf.vim'
    use 'whiteinge/diffconflicts'
    use 'gregsexton/gitv'
    use 'sjl/gundo.vim'
    use 'Valloric/MatchTagAlways'
    use 'scrooloose/nerdcommenter'
    use 'chrisbra/NrrwRgn'
    use 'whatsthatsmell/codesmell_dark.vim'
    use 'nvim-treesitter/nvim-treesitter-textobjects'
    use 'kyazdani42/nvim-web-devicons'
    use 'nvim-treesitter/playground'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/popup.nvim'
    use 'williamboman/nvim-lsp-installer'
    use 'godlygeek/tabular'
    use 'markonm/traces.vim'
    use 'mhinz/vim-startify'
    use 'nvim-telescope/telescope-fzy-native.nvim'
    use 'honza/vim-snippets'
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

    use { 'unblevable/quick-scope',

        config = function()
            vim.g.qs_enable = 0
        end
    }

    use { 'nvim-telescope/telescope.nvim',

        config = function()
                require('telescope').setup()

                after = {
                    vim.api.nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<CR>',      { noremap = true }),
                    vim.api.nvim_set_keymap('n', '<leader>fg', ':Telescope git_files<CR>',       { noremap = true }),
                    vim.api.nvim_set_keymap('n', '<leader>fa', ':Telescope live_grep<CR>',       { noremap = true }),
                    vim.api.nvim_set_keymap('n', '<leader>fm', ':Telescope man_pages<CR>',       { noremap = true }),
                    vim.api.nvim_set_keymap('n', '<leader>fc', ':Telescope colorscheme<CR>',     { noremap = true }),
                    vim.api.nvim_set_keymap('n', '<leader>fb', ':Telescope git_branches<CR>',    { noremap = true }),
                    vim.api.nvim_set_keymap('n', '<leader>fh', ':Telescope command_history<CR>', { noremap = true }),
                    vim.api.nvim_set_keymap('n', '<leader>fr', ':Telescope registers<CR>',       { noremap = true }),
                    vim.api.nvim_set_keymap('n', '<leader>b',  ':Telescope buffers<CR>',         { noremap = true }),
                    vim.api.nvim_set_keymap('n', '<c-h>',      ':Telescope help_tags<CR>',       { noremap = true })
                }
        end
    }

    use { 'benmills/vimux',

        config = function()
            vim.g.VimuxOrientation = "v"
            vim.g.VimuxHeight = "7"

            after = {
                vim.api.nvim_set_keymap('n', '<leader>vm', ':VimuxRunCommand("makeSpace.sh")<CR>', { noremap = true }),
                vim.api.nvim_set_keymap('n', '<leader>vc', ':VimuxCloseRunner<CR>',                { noremap = true }),
                vim.api.nvim_set_keymap('n', '<leader>vr', ':VimuxRunLastCommand<CR>',             { noremap = true }),
                vim.api.nvim_set_keymap('n', '<leader>vi', ':VimuxInterruptRunner<CR>',            { noremap = true })
            }
        end
    }

    use { 'lewis6991/gitsigns.nvim',

        requires = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('gitsigns').setup()
        end
    }

    use { 'nvim-treesitter/nvim-treesitter',

        run = ':TSUpdate'
    }

    use { 'SirVer/ultisnips',

        config = function()
            vim.g.UltiSnipsExpandTrigger = '<tab>'
            vim.g.UltiSnipsJumpForwardTrigger = '<tab>'
            vim.g.UltiSnipsJumpBackwardTrigger = '<c-z>'
            vim.g.SuperTabDefaultCompletionType  =  'context'
            vim.g.UltiSnipsSnippetsDir = '~/.vim/UltiSnips'
            vim.g.UltiSnipsSnippetDirectories = { 'vim/UltiSnips', 'UltiSnips' }
        end
    }

    use { 'rhysd/clever-f.vim',

        config = function()
            vim.g.clever_f_across_no_line = 1
            vim.g.clever_f_smart_case = 0
            vim.g.clever_f_mark_direct = 0
            vim.g.clever_f_mark_char = 1
        end
    }

    use { 'hrsh7th/nvim-cmp',

        config = function()
            local cmp = require'cmp'

            cmp.setup({
                snippet = {
                    -- REQUIRED - you must specify a snippet engine
                    expand = function(args)
                        vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
                    end,
                },
                mapping = {
                    ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
                    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
                    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
                    ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
                    ['<C-e>'] = cmp.mapping({
                        i = cmp.mapping.abort(),
                        c = cmp.mapping.close(),
                    }),
                    ['<CR>'] = cmp.mapping.confirm({ select = true }),
                },
                sources = cmp.config.sources({
                    { name = 'nvim_lsp' },
                    { name = 'ultisnips' },
                    { name = 'buffer' },
                })
            })

            -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
            cmp.setup.cmdline('/', {
                sources = {
                    { name = 'buffer' }
                }
            })

            -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
            cmp.setup.cmdline(':', {
                sources = cmp.config.sources({
                    { name = 'path' }
                }, {
                    { name = 'cmdline' }
                })
            })

            -- Setup lspconfig.
            local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
            -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
            require('lspconfig')['vimls'].setup {
                capabilities = capabilities
            }
        end
    }

    use { 'neovim/nvim-lspconfig',

        config = function()
            require'lspconfig'.vimls.setup { }
            require'lspconfig'.sumneko_lua.setup {
                cmd = { '/home/bertold/.local/share/nvim/lsp_servers/sumneko_lua/extension/server/bin/Linux/lua-language-server', '-E', '/home/bertold/.local/share/nvim/lsp_servers/sumneko_lua/extension/server/bin/Linux/main.lua' },
                settings = {
                    Lua = {
                        runtime =  {
                            version = 'LuaJIT',
                            path = '/usr/bin/luajit'
                        },
                        completion = { callSnippet = 'Both' },
                        diagnostics = {
                            globals = { 'vim' }
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

            vim.cmd [[
                augroup LUA
                    autocmd BufEnter plugins.lua :LspStop<CR>
                augroup END
            ]]
        end
    }

    use { 'AckslD/nvim-neoclip.lua',

        config = function()
            require('neoclip').setup()
            require('telescope').load_extension('neoclip')
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

    use { 'phaazon/hop.nvim',

        config = function()
            require('hop').setup { keys = 'asdfjkl;weio' }

            after = {
                vim.api.nvim_set_keymap('n', 'm', "<cmd>lua require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR,  current_line_only = false})<CR>",  { noremap = true }),
                vim.api.nvim_set_keymap('n', 'M', "<cmd>lua require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false})<CR>",  { noremap = true }),
            }
        end
    }

    use { 'quangnguyen30192/cmp-nvim-ultisnips',

        config = function()
            local cmp = require("cmp")
            local has_any_words_before = function()
              if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then
                return false
              end
              local line, col = unpack(vim.api.nvim_win_get_cursor(0))
              return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
            end

            local press = function(key)
              vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), "n", true)
            end

            cmp.setup({
              snippet = {
                expand = function(args)
                  vim.fn["UltiSnips#Anon"](args.body)
                end,
              },
              sources = {
                { name = "ultisnips" },
                -- more sources
              },
              -- Configure for <TAB> people
              -- - <TAB> and <S-TAB>: cycle forward and backward through autocompletion items
              -- - <TAB> and <S-TAB>: cycle forward and backward through snippets tabstops and placeholders
              -- - <TAB> to expand snippet when no completion item selected (you don't need to select the snippet from completion item to expand)
              -- - <C-space> to expand the selected snippet from completion menu
              mapping = {
                ["<C-Space>"] = cmp.mapping(function(fallback)
                  if cmp.visible() then
                    if vim.fn["UltiSnips#CanExpandSnippet"]() == 1 then
                      return press("<C-R>=UltiSnips#ExpandSnippet()<CR>")
                    end

                    cmp.select_next_item()
                  elseif has_any_words_before() then
                    press("<Space>")
                  else
                    fallback()
                  end
                end, {
                  "i",
                  "s",
                  -- add this line when using cmp-cmdline:
                  "c",
                }),
                ["<Tab>"] = cmp.mapping(function(fallback)
                  if cmp.get_selected_entry() == nil and vim.fn["UltiSnips#CanExpandSnippet"]() == 1 then
                    press("<C-R>=UltiSnips#ExpandSnippet()<CR>")
                  elseif vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
                    press("<ESC>:call UltiSnips#JumpForwards()<CR>")
                  elseif cmp.visible() then
                    cmp.select_next_item()
                  elseif has_any_words_before() then
                    press("<Tab>")
                  else
                    fallback()
                  end
                end, {
                  "i",
                  "s",
                  -- add this line when using cmp-cmdline:
                  "c",
                }),
                ["<S-Tab>"] = cmp.mapping(function(fallback)
                  if vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then
                    press("<ESC>:call UltiSnips#JumpBackwards()<CR>")
                  elseif cmp.visible() then
                    cmp.select_prev_item()
                  else
                    fallback()
                  end
                end, {
                  "i",
                  "s",
                  -- add this line when using cmp-cmdline:
                  "c",
                }),
              },
            })
      end
    }

    use { 'windwp/nvim-ts-autotag',

        config = function()
            require('nvim-ts-autotag').setup({
                    autotag = {
                        enable = true,
                        filetypes = { 'html', 'xml', 'javascript' }
                    }
            })
        end
    }

end)

    --[[
" Highlight Word
"
" This mini-plugin provides a few mappings for highlighting words temporarily.
"
" Sometimes you're looking at a hairy piece of code and would like a certain
" word or two to stand out temporarily.  You can search for it, but that only
" gives you one color of highlighting.  Now you can use <leader>N where N is
" a number from 1-6 to highlight the current word in a specific color.

function! HiInterestingWord(n)
    " Save our location.
    normal! mz

    " Yank the current word into the z register.
    normal! "zyiw

    " Calculate an arbitrary match ID.  Hopefully nothing else is using it.
    let mid = 86750 + a:n

    " Clear existing matches, but don't worry if they don't exist.
    silent! call matchdelete(mid)

    " Construct a literal pattern that has to match at boundaries.
    let pat = '\V\<' . escape(@z, '\') . '\>'

    " Actually match the words.
    call matchadd("InterestingWord" . a:n, pat, 1, mid)

    " Move back to our original location.
    normal! `z
endfunction

nnoremap <silent> <leader>1 :call HiInterestingWord(1)<cr>
nnoremap <silent> <leader>2 :call HiInterestingWord(2)<cr>
nnoremap <silent> <leader>3 :call HiInterestingWord(3)<cr>
nnoremap <silent> <leader>4 :call HiInterestingWord(4)<cr>
nnoremap <silent> <leader>5 :call HiInterestingWord(5)<cr>
nnoremap <silent> <leader>6 :call HiInterestingWord(6)<cr>

hi def InterestingWord1 guifg=#000000 ctermfg=16 guibg=#ffa724 ctermbg=214
hi def InterestingWord2 guifg=#000000 ctermfg=16 guibg=#aeee00 ctermbg=154
hi def InterestingWord3 guifg=#000000 ctermfg=16 guibg=#8cffba ctermbg=121
hi def InterestingWord4 guifg=#000000 ctermfg=16 guibg=#b88853 ctermbg=137
hi def InterestingWord5 guifg=#000000 ctermfg=16 guibg=#ff9eb8 ctermbg=211
hi def InterestingWord6 guifg=#000000 ctermfg=16 guibg=#ff2c4b ctermbg=195
Plug 'idbrii/vim-endoscope'
Plug 'tpope/vim-fugitive'

nnoremap <leader>gs :silent Git<cr>
nnoremap <leader>gp :silent Gpull<cr>
nnoremap <leader>gd :silent Gdiff<cr>
nnoremap <leader>gw :silent Gwrite<cr>
nnoremap <leader>gb :silent Gblame<cr>
nnoremap <leader>gc :silent Gcommit<cr>
nnoremap <leader>gl :silent Shell git gl -18<cr>:wincmd \|<cr>

Plug 'sukima/xmledit'
]]
