local api = vim.api
local noresi = { noremap = true, silent = true }

local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

map('i', 'jk', '<ESC>', { noremap = false })
map('v', 'jk', '<ESC>')
map('c', 'jk', '<C-U> <ESC>')

map('n', ';', ':')
map('v', ';', ':')
map('n', ':', ';')

map('n', '<leader>s', ':w<CR>')

map('n', '<leader>v',  ':tabedit $MYVIMRC<CR>')
map('n', '<leader>V',  ':so $MYVIMRC<CR>')
map('n', '<leader>so', ':so %<CR>')

-- paste the contents of the clipboard
map('n', '<C-Space>', '"*p')
-- copy whole buffer to clipboard and quit
map('n', '<M-Space>', 'gg"*yG:q!<CR>')

-- run previous shell command
map('n', '<leader>r', ':!<UP><CR>')
map('n', '<leader>p', ':set paste!<CR>')

map('n', '<leader>j', '<C-w>j')
map('n', '<leader>k', '<C-w>k')
map('n', '<leader>l', '<C-w>l')
map('n', '<leader>h', '<C-w>h')
map('n', '<leader>x', '<C-w>c')
map('n', '<leader>o', '<C-w>o')
map('n', '<leader>_', '<C-w>_')

map('n', '<leader>q', ':QuickScopeToggle<CR>')

map('n', '<F12>', ':cd %:h<CR>')

map('n', '<F7>', ':tabprev<CR>')

map('n', '<leader>z', 'za')
map('v', '<leader>z', 'za')

map('n', 'H', '^')
map('v', 'H', '^')
map('n', 'L', 'g_')
map('v', 'L', 'g_')

map('i', '{{', '{' .. '<enter>' .. '}<ESC>O')
map('i', ',,', ',<CR>')

map('n', 'ZZ', 'ZQ')
map('n', 'ZQ', 'ZZ')

map('n', 'Q', '<nop>')

-- command mode move to end and home like in shell
map('c', '<C-a>', '<Home>')
map('c', '<C-e>', '<End>')

map('n', 'Y', 'y$')

-- quickly move around in insert mode
map('i', '<c-l>', '<right>')
map('i', '<c-h>', '<left>')
map('i', '<c-j>', '<ESC>A')
map('i', '<c-o>', '<ESC>I')

-- edit file even if it doesn't exist
map('n', 'gf', ':edit <cfile><cr>')

map('n', '<leader>os', ':edit ~/.config/nvim/lua/user/settings.lua<CR>')
map('n', '<leader>of', ':edit ~/.config/nvim/lua/user/filetypes.lua<CR>')
map('n', '<leader>om', ':edit ~/.config/nvim/lua/user/mappings.lua<CR>')
map('n', '<leader>op', ':edit ~/.config/nvim/lua/user/plugins.lua<CR>')
map('n', '<leader>ot', ':edit ~/.config/nvim/lua/user/theme.lua<CR>')

-- create text-object between / /
map('o', 'i/', ':<C-U>normal! T/vt/<CR>', noresi)
map('o', 'a/', ':<C-U>normal! F/vf/<CR>', noresi)
map('x', 'i/', ':<C-U>normal! T/vt/<CR>', noresi)
map('x', 'a/', ':<C-U>normal! F/vf/<CR>', noresi)

-- create text-object between | |
map('o', 'i|', ':<C-U>normal! T|vt|<CR>', noresi)
map('o', 'a|', ':<C-U>normal! F|vf|<CR>', noresi)
map('x', 'i|', ':<C-U>normal! T|vt|<CR>', noresi)
map('x', 'a|', ':<C-U>normal! F|vf|<CR>', noresi)

-- remove trailing whitespace
map('n', '<leader>w',":%s/\\s\\+$//<CR>")

map('n', '<F10>', ':TSHighlightCapturesUnderCursor<CR>')

-- copy-paste whole paragraph
map('n', '<C-p>', "yap'[V']y']p")

-- select previously modified or pasted text
map('n', '<C-l>', "'[V']")

map('n', '<M-l>', "']")

-- Ctrl-]
map('n', '<c-u>', '')

-- Packer
map('n', '<leader>pc', ':PackerCompile<CR>', { noremap = true })
map('n', '<leader>pi', ':PackerInstall<CR>', { noremap = true })
map('n', '<leader>ps', ':PackerSync<CR>',    { noremap = true })

-- Telescope
map('n', '<leader>yg', ':Telescope git_files<CR>')
map('n', '<leader>ya', ':Telescope live_grep<CR>')
map('n', '<leader>ym', ':Telescope man_pages<CR>')
map('n', '<leader>yc', ':Telescope colorscheme<CR>')
map('n', '<leader>yb', ':Telescope git_branches<CR>')
map('n', '<leader>yh', ':Telescope command_history<CR>')
map('n', '<leader>yr', ':Telescope registers<CR>')
map('n', '<leader>b',  ':Telescope buffers<CR>')
map('n', '<c-h>',      ':Telescope help_tags<CR>')
map('n', '<leader>ff', ":lua require('telescope.builtin').find_files(require('telescope').setup{ defaults = { layout_strategy = 'vertical', layout_config = { height = 0.90, preview_height = 0 } } })<CR>")

-- Lsp
map('n', 'gD', ':lua vim.lsp.buf.declaration()<CR>',                         noresi)
map('n', 'gd', ':lua vim.lsp.buf.definition()<CR>',                          noresi)
map('n', 'K',  ':lua vim.lsp.buf.hover()<CR>',                               noresi)
map('n', 'gI', ':lua vim.lsp.buf.implementation()<CR>',                      noresi)
--map('n', '<leader>wa', ':lua vim.lsp.buf.add_workspace_folder()<CR>',        noresi)
--map('n', '<leader>wr', ':lua vim.lsp.buf.remove_workspace_folder()<CR>',     noresi)
map('n', '<leader>D', ':lua vim.lsp.buf.type_definition()<CR>',              noresi)
map('n', '<leader>rn', ':lua vim.lsp.buf.rename()<CR>',                      noresi)
map('n', '<leader>ca', ':lua vim.lsp.buf.code_action()<CR>',                 noresi)
map('n', 'gr', ':lua vim.lsp.buf.references()<CR>',                          noresi)
map('n', '[d', ':lua vim.lsp.diagnostic.goto_prev()<CR>',                    noresi)
map('n', ']d', ':lua vim.lsp.diagnostic.goto_next()<CR>',                    noresi)
map('n', '<leader>e', ':lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', noresi)
--map('n', '<leader>wl', ':lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', noresi)
map('n', '<c-s>', ':LspStop<CR>', noresi)

-- Neoformat
map('n', '<leader>cc', ':CommentToggle<CR>')
map('v', '<leader>cc', ":'<,'>CommentToggle<CR>")

-- TrueZen
map('n', '<leader>n', ':TZNarrow<CR>')
map('v', '<leader>n', ":'<,'>TZNarrow<CR>")

-- XML formatting
map('n', '=x', ':exe ":silent %!xmllint --format --recover - 2>/dev/null"<CR>:set filetype=xml<CR>', noresi)
