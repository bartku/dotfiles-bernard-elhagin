-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/bertold/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/bertold/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/bertold/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/bertold/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/bertold/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  NrrwRgn = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/NrrwRgn",
    url = "https://github.com/chrisbra/NrrwRgn"
  },
  ["TrueZen.nvim"] = {
    commands = { "TZFocus", "TZAtaraxis", "TZMinimalist" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/opt/TrueZen.nvim",
    url = "https://github.com/Pocco81/TrueZen.nvim"
  },
  ["awesome-vim-colorschemes"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/awesome-vim-colorschemes",
    url = "https://github.com/rafi/awesome-vim-colorschemes"
  },
  ["base16-vim"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/base16-vim",
    url = "https://github.com/chriskempson/base16-vim"
  },
  ["clever-f.vim"] = {
    config = { "\27LJ\2\n¥\1\0\0\2\0\6\0\0176\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\0\0=\1\3\0006\0\0\0009\0\1\0)\1\0\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\5\0K\0\1\0\23clever_f_mark_char\25clever_f_mark_direct\24clever_f_smart_case\28clever_f_across_no_line\6g\bvim\0" },
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/clever-f.vim",
    url = "https://github.com/rhysd/clever-f.vim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-calc"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/cmp-calc",
    url = "https://github.com/hrsh7th/cmp-calc"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-document-symbol"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-document-symbol",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-document-symbol"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-spell"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/cmp-spell",
    url = "https://github.com/f3fora/cmp-spell"
  },
  ["cmp-treesitter"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/cmp-treesitter",
    url = "https://github.com/ray-x/cmp-treesitter"
  },
  ["cmp-zsh"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/cmp-zsh",
    url = "https://github.com/tamago324/cmp-zsh"
  },
  ["codesmell_dark.vim"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/codesmell_dark.vim",
    url = "https://github.com/whatsthatsmell/codesmell_dark.vim"
  },
  ["copilot.vim"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  ["ctrlsf.vim"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/ctrlsf.vim",
    url = "https://github.com/dyng/ctrlsf.vim"
  },
  diffconflicts = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/diffconflicts",
    url = "https://github.com/whiteinge/diffconflicts"
  },
  edge = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/edge",
    url = "https://github.com/sainnhe/edge"
  },
  ["filetype.nvim"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/filetype.nvim",
    url = "https://github.com/nathom/filetype.nvim"
  },
  ["friendly-snippets"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/opt/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  gitv = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/gitv",
    url = "https://github.com/gregsexton/gitv"
  },
  ["gundo.vim"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/gundo.vim",
    url = "https://github.com/sjl/gundo.vim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\nÚ\3\0\0\a\0\15\1\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0014\0\3\0006\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\b\0'\5\t\0005\6\n\0B\1\5\2>\1\1\0006\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\v\0'\5\f\0005\6\r\0B\1\5\0?\1\0\0007\0\14\0K\0\1\0\nafter\1\0\1\fnoremap\2‚\1<cmd>lua require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false})<CR>\6M\1\0\1\fnoremap\2‚\1<cmd>lua require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR,  current_line_only = false})<CR>\6m\6n\20nvim_set_keymap\bapi\bvim\1\0\1\tkeys\17asdfjkl;weio\nsetup\bhop\frequire\5€€À™\4\0" },
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["kanagawa.nvim"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n”\1\0\0\4\0\b\0\v5\0\0\0007\0\1\0006\0\2\0'\2\3\0B\0\2\0029\0\4\0005\2\6\0005\3\5\0=\3\a\2B\0\2\1K\0\1\0\foptions\1\0\0\1\0\1\ntheme\fdracula\nsetup\flualine\frequire\rrequires\1\2\1\0!kyazdani42/nvim-web-devicons\bopt\2\0" },
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["material.nvim"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/material.nvim",
    url = "https://github.com/marko-cerovac/material.nvim"
  },
  ["mkdir.nvim"] = {
    commands = { "new" },
    config = { "\27LJ\2\n%\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\nmkdir\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/opt/mkdir.nvim",
    url = "https://github.com/jghauser/mkdir.nvim"
  },
  neoformat = {
    commands = { "Neoformat" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/opt/neoformat",
    url = "https://github.com/sbdchd/neoformat"
  },
  ["nord.nvim"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/nord.nvim",
    url = "https://github.com/shaunsingh/nord.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bqf"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/opt/nvim-bqf",
    url = "https://github.com/kevinhwang91/nvim-bqf"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23plugins/bufferline\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/opt/nvim-bufferline.lua",
    url = "https://github.com/akinsho/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n`\0\0\3\0\5\0\b6\0\0\0'\2\1\0B\0\2\0016\0\2\0009\0\3\0'\2\4\0B\0\2\1K\0\1\0\28ColorizerAttachToBuffer\bcmd\bvim\21plugins/colorize\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-jdtls"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/nvim-jdtls",
    url = "https://github.com/mfussenegger/nvim-jdtls"
  },
  ["nvim-lsp-installer"] = {
    config = { "\27LJ\2\n5\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26plugins/lsp_installer\frequire\0" },
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n¨\6\0\0\n\0!\0F6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\4\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\5\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\6\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\a\0009\0\3\0005\2\t\0005\3\b\0=\3\n\0025\3\30\0005\4\f\0005\5\v\0=\5\r\0045\5\14\0=\5\15\0045\5\17\0005\6\16\0=\6\18\5=\5\19\0045\5\25\0004\6\0\b6\a\20\0009\a\21\a9\a\22\a'\t\23\0B\a\2\2+\b\2\0<\b\a\0066\a\20\0009\a\21\a9\a\22\a'\t\24\0B\a\2\2+\b\2\0<\b\a\6=\6\26\5=\5\27\0045\5\28\0=\5\29\4=\4\31\3=\3 \2B\0\2\1K\0\1\0\rsettings\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\2\20preloadFileSize\3Ð†\3\15maxPreload\3Ð\15\28$VIMRUNTIME/lua/vim/lsp\20$VIMRUNTIME/lua\vexpand\afn\bvim\16diagnostics\fglobals\1\0\0\1\3\0\0\bvim\buse\15completion\1\0\1\16callSnippet\tBoth\fruntime\1\0\0\1\0\2\tpath\20/usr/bin/luajit\fversion\vLuaJIT\bcmd\1\0\0\1\4\0\0e/home/bertold/.local/share/nvim/lsp_servers/sumneko_lua/extension/server/bin/lua-language-server\a-EZ/home/bertold/.local/share/nvim/lsp_servers/sumneko_lua/extension/server/bin/main.lua\16sumneko_lua\rtsserver\thtml\ncssls\nsetup\nvimls\14lspconfig\frequire\0" },
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23plugins/treesitter\frequire\0" },
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/opt/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["quick-scope"] = {
    config = { "\27LJ\2\n+\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\0\0=\1\2\0K\0\1\0\14qs_enable\6g\bvim\0" },
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/quick-scope",
    url = "https://github.com/unblevable/quick-scope"
  },
  tabular = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/tabular",
    url = "https://github.com/godlygeek/tabular"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzy-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22plugins/telescope\frequire\0" },
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["traces.vim"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/traces.vim",
    url = "https://github.com/markonm/traces.vim"
  },
  ["twilight.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rtwilight\frequire\0" },
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/twilight.nvim",
    url = "https://github.com/folke/twilight.nvim"
  },
  ["vim-cool"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/vim-cool",
    url = "https://github.com/romainl/vim-cool"
  },
  ["vim-enfocado"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/vim-enfocado",
    url = "https://github.com/wuelnerdotexe/vim-enfocado"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  },
  ["vim-misc"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/vim-misc",
    url = "https://github.com/xolox/vim-misc"
  },
  ["vim-moonfly-colors"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/vim-moonfly-colors",
    url = "https://github.com/bluz71/vim-moonfly-colors"
  },
  ["vim-nightfly-guicolors"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/vim-nightfly-guicolors",
    url = "https://github.com/bluz71/vim-nightfly-guicolors"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/vim-polyglot",
    url = "https://github.com/sheerun/vim-polyglot"
  },
  ["vim-prettier"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/vim-prettier",
    url = "https://github.com/prettier/vim-prettier"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-rooter"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/vim-rooter",
    url = "https://github.com/airblade/vim-rooter"
  },
  ["vim-sandwich"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/vim-sandwich",
    url = "https://github.com/machakann/vim-sandwich"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/vim-startify",
    url = "https://github.com/mhinz/vim-startify"
  },
  ["vim-textobj-between"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/vim-textobj-between",
    url = "https://github.com/thinca/vim-textobj-between"
  },
  ["vim-textobj-entire"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/vim-textobj-entire",
    url = "https://github.com/kana/vim-textobj-entire"
  },
  ["vim-textobj-user"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/vim-textobj-user",
    url = "https://github.com/kana/vim-textobj-user"
  },
  ["vim-vinegar"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/vim-vinegar",
    url = "https://github.com/tpope/vim-vinegar"
  },
  vimux = {
    config = { "\27LJ\2\nÖ\3\0\0\a\0\22\1/6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0004\0\5\0006\1\0\0009\1\6\0019\1\a\1'\3\b\0'\4\t\0'\5\n\0005\6\v\0B\1\5\2>\1\1\0006\1\0\0009\1\6\0019\1\a\1'\3\b\0'\4\f\0'\5\r\0005\6\14\0B\1\5\2>\1\2\0006\1\0\0009\1\6\0019\1\a\1'\3\b\0'\4\15\0'\5\16\0005\6\17\0B\1\5\2>\1\3\0006\1\0\0009\1\6\0019\1\a\1'\3\b\0'\4\18\0'\5\19\0005\6\20\0B\1\5\0?\1\0\0007\0\21\0K\0\1\0\nafter\1\0\1\fnoremap\2\30:VimuxInterruptRunner<CR>\15<leader>vi\1\0\1\fnoremap\2\29:VimuxRunLastCommand<CR>\15<leader>vr\1\0\1\fnoremap\2\26:VimuxCloseRunner<CR>\15<leader>vc\1\0\1\fnoremap\2):VimuxRunCommand(\"makeSpace.sh\")<CR>\15<leader>vm\6n\20nvim_set_keymap\bapi\0067\16VimuxHeight\6v\21VimuxOrientation\6g\bvim\t€€À™\4\0" },
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/vimux",
    url = "https://github.com/benmills/vimux"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/opt/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: TrueZen.nvim
time([[Setup for TrueZen.nvim]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plugins/true-zen\frequire\0", "setup", "TrueZen.nvim")
time([[Setup for TrueZen.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22plugins/telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: vimux
time([[Config for vimux]], true)
try_loadstring("\27LJ\2\nÖ\3\0\0\a\0\22\1/6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0004\0\5\0006\1\0\0009\1\6\0019\1\a\1'\3\b\0'\4\t\0'\5\n\0005\6\v\0B\1\5\2>\1\1\0006\1\0\0009\1\6\0019\1\a\1'\3\b\0'\4\f\0'\5\r\0005\6\14\0B\1\5\2>\1\2\0006\1\0\0009\1\6\0019\1\a\1'\3\b\0'\4\15\0'\5\16\0005\6\17\0B\1\5\2>\1\3\0006\1\0\0009\1\6\0019\1\a\1'\3\b\0'\4\18\0'\5\19\0005\6\20\0B\1\5\0?\1\0\0007\0\21\0K\0\1\0\nafter\1\0\1\fnoremap\2\30:VimuxInterruptRunner<CR>\15<leader>vi\1\0\1\fnoremap\2\29:VimuxRunLastCommand<CR>\15<leader>vr\1\0\1\fnoremap\2\26:VimuxCloseRunner<CR>\15<leader>vc\1\0\1\fnoremap\2):VimuxRunCommand(\"makeSpace.sh\")<CR>\15<leader>vm\6n\20nvim_set_keymap\bapi\0067\16VimuxHeight\6v\21VimuxOrientation\6g\bvim\t€€À™\4\0", "config", "vimux")
time([[Config for vimux]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n”\1\0\0\4\0\b\0\v5\0\0\0007\0\1\0006\0\2\0'\2\3\0B\0\2\0029\0\4\0005\2\6\0005\3\5\0=\3\a\2B\0\2\1K\0\1\0\foptions\1\0\0\1\0\1\ntheme\fdracula\nsetup\flualine\frequire\rrequires\1\2\1\0!kyazdani42/nvim-web-devicons\bopt\2\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: twilight.nvim
time([[Config for twilight.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rtwilight\frequire\0", "config", "twilight.nvim")
time([[Config for twilight.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23plugins/treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26plugins/lsp_installer\frequire\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\nÚ\3\0\0\a\0\15\1\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0014\0\3\0006\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\b\0'\5\t\0005\6\n\0B\1\5\2>\1\1\0006\1\4\0009\1\5\0019\1\6\1'\3\a\0'\4\v\0'\5\f\0005\6\r\0B\1\5\0?\1\0\0007\0\14\0K\0\1\0\nafter\1\0\1\fnoremap\2‚\1<cmd>lua require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false})<CR>\6M\1\0\1\fnoremap\2‚\1<cmd>lua require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR,  current_line_only = false})<CR>\6m\6n\20nvim_set_keymap\bapi\bvim\1\0\1\tkeys\17asdfjkl;weio\nsetup\bhop\frequire\5€€À™\4\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: clever-f.vim
time([[Config for clever-f.vim]], true)
try_loadstring("\27LJ\2\n¥\1\0\0\2\0\6\0\0176\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\0\0=\1\3\0006\0\0\0009\0\1\0)\1\0\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\5\0K\0\1\0\23clever_f_mark_char\25clever_f_mark_direct\24clever_f_smart_case\28clever_f_across_no_line\6g\bvim\0", "config", "clever-f.vim")
time([[Config for clever-f.vim]], false)
-- Config for: quick-scope
time([[Config for quick-scope]], true)
try_loadstring("\27LJ\2\n+\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\0\0=\1\2\0K\0\1\0\14qs_enable\6g\bvim\0", "config", "quick-scope")
time([[Config for quick-scope]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n¨\6\0\0\n\0!\0F6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\4\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\5\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\6\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\a\0009\0\3\0005\2\t\0005\3\b\0=\3\n\0025\3\30\0005\4\f\0005\5\v\0=\5\r\0045\5\14\0=\5\15\0045\5\17\0005\6\16\0=\6\18\5=\5\19\0045\5\25\0004\6\0\b6\a\20\0009\a\21\a9\a\22\a'\t\23\0B\a\2\2+\b\2\0<\b\a\0066\a\20\0009\a\21\a9\a\22\a'\t\24\0B\a\2\2+\b\2\0<\b\a\6=\6\26\5=\5\27\0045\5\28\0=\5\29\4=\4\31\3=\3 \2B\0\2\1K\0\1\0\rsettings\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\2\20preloadFileSize\3Ð†\3\15maxPreload\3Ð\15\28$VIMRUNTIME/lua/vim/lsp\20$VIMRUNTIME/lua\vexpand\afn\bvim\16diagnostics\fglobals\1\0\0\1\3\0\0\bvim\buse\15completion\1\0\1\16callSnippet\tBoth\fruntime\1\0\0\1\0\2\tpath\20/usr/bin/luajit\fversion\vLuaJIT\bcmd\1\0\0\1\4\0\0e/home/bertold/.local/share/nvim/lsp_servers/sumneko_lua/extension/server/bin/lua-language-server\a-EZ/home/bertold/.local/share/nvim/lsp_servers/sumneko_lua/extension/server/bin/main.lua\16sumneko_lua\rtsserver\thtml\ncssls\nsetup\nvimls\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd telescope-fzy-native.nvim ]]
vim.cmd [[ packadd popup.nvim ]]
vim.cmd [[ packadd nvim-cmp ]]
vim.cmd [[ packadd nvim-autopairs ]]

-- Config for: nvim-autopairs
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")

vim.cmd [[ packadd nvim-web-devicons ]]
vim.cmd [[ packadd nvim-bufferline.lua ]]

-- Config for: nvim-bufferline.lua
try_loadstring("\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23plugins/bufferline\frequire\0", "config", "nvim-bufferline.lua")

time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file new lua require("packer.load")({'mkdir.nvim'}, { cmd = "new", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TZFocus lua require("packer.load")({'TrueZen.nvim'}, { cmd = "TZFocus", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TZAtaraxis lua require("packer.load")({'TrueZen.nvim'}, { cmd = "TZAtaraxis", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TZMinimalist lua require("packer.load")({'TrueZen.nvim'}, { cmd = "TZMinimalist", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Neoformat lua require("packer.load")({'neoformat'}, { cmd = "Neoformat", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType qf ++once lua require("packer.load")({'nvim-bqf'}, { ft = "qf" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufEnter * ++once lua require("packer.load")({'nvim-colorizer.lua'}, { event = "BufEnter *" }, _G.packer_plugins)]]
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'which-key.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'friendly-snippets'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
