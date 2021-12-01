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
local package_path_str = "/home/bertold/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/bertold/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/bertold/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/bertold/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/bertold/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
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
  CSApprox = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/CSApprox",
    url = "https://github.com/vim-scripts/CSApprox"
  },
  MatchTagAlways = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/MatchTagAlways",
    url = "https://github.com/Valloric/MatchTagAlways"
  },
  NrrwRgn = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/NrrwRgn",
    url = "https://github.com/chrisbra/NrrwRgn"
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
    config = { "\27LJ\1\2¥\1\0\0\2\0\6\0\0174\0\0\0007\0\1\0'\1\1\0:\1\2\0004\0\0\0007\0\1\0'\1\0\0:\1\3\0004\0\0\0007\0\1\0'\1\0\0:\1\4\0004\0\0\0007\0\1\0'\1\1\0:\1\5\0G\0\1\0\23clever_f_mark_char\25clever_f_mark_direct\24clever_f_smart_case\28clever_f_across_no_line\6g\bvim\0" },
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/clever-f.vim",
    url = "https://github.com/rhysd/clever-f.vim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
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
  ["cmp-path"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["codesmell_dark.vim"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/codesmell_dark.vim",
    url = "https://github.com/whatsthatsmell/codesmell_dark.vim"
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
  ["gitsigns.nvim"] = {
    config = { "\27LJ\1\0026\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
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
    config = { "\27LJ\1\2Ö\3\0\0\6\0\15\1\0274\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\0012\0\3\0004\1\4\0007\1\5\0017\1\6\1%\2\a\0%\3\b\0%\4\t\0003\5\n\0>\1\5\2;\1\1\0004\1\4\0007\1\5\0017\1\6\1%\2\a\0%\3\v\0%\4\f\0003\5\r\0>\1\5\0<\1\0\0005\0\14\0G\0\1\0\nafter\1\0\1\fnoremap\2‚\1<cmd>lua require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false})<CR>\6M\1\0\1\fnoremap\2‚\1<cmd>lua require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR,  current_line_only = false})<CR>\6m\6n\20nvim_set_keymap\bapi\bvim\1\0\1\tkeys\rasdfjkl;\nsetup\bhop\frequire\5€€À™\4\0" },
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\1\2”\1\0\0\3\0\b\0\v3\0\0\0005\0\1\0004\0\2\0%\1\3\0>\0\2\0027\0\4\0003\1\6\0003\2\5\0:\2\a\1>\0\2\1G\0\1\0\foptions\1\0\0\1\0\1\ntheme\fdracula\nsetup\flualine\frequire\rrequires\1\2\1\0!kyazdani42/nvim-web-devicons\bopt\2\0" },
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/nerdcommenter",
    url = "https://github.com/scrooloose/nerdcommenter"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\1\2:\0\1\3\0\4\0\0064\1\0\0007\1\1\0017\1\2\0017\2\3\0>\1\2\1G\0\1\0\tbody\19UltiSnips#Anon\afn\bvimÚ\6\1\0\b\0004\0m4\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\6\0003\3\4\0001\4\3\0:\4\5\3:\3\a\0023\3\v\0007\4\b\0007\5\b\0007\5\t\5'\6üÿ>\5\2\0023\6\n\0>\4\3\2:\4\f\0037\4\b\0007\5\b\0007\5\t\5'\6\4\0>\5\2\0023\6\r\0>\4\3\2:\4\14\0037\4\b\0007\5\b\0007\5\15\5>\5\1\0023\6\16\0>\4\3\2:\4\17\0037\4\18\0007\4\19\4:\4\20\0037\4\b\0003\5\22\0007\6\b\0007\6\21\6>\6\1\2:\6\23\0057\6\b\0007\6\24\6>\6\1\2:\6\25\5>\4\2\2:\4\26\0037\4\b\0007\4\27\0043\5\28\0>\4\2\2:\4\29\3:\3\b\0027\3\18\0007\3\30\0032\4\4\0003\5\31\0;\5\1\0043\5 \0;\5\2\0043\5!\0;\5\3\4>\3\2\2:\3\30\2>\1\2\0017\1\2\0007\1\"\1%\2#\0003\3%\0002\4\3\0003\5$\0;\5\1\4:\4\30\3>\1\3\0017\1\2\0007\1\"\1%\2&\0003\3)\0007\4\18\0007\4\30\0042\5\3\0003\6'\0;\6\1\0052\6\3\0003\a(\0;\a\1\6>\4\3\2:\4\30\3>\1\3\0014\1\0\0%\2*\0>\1\2\0027\1+\0014\2,\0007\2-\0027\2.\0027\2/\2>\2\1\0=\1\0\0024\2\0\0%\0030\0>\2\2\0027\0021\0027\2\2\0023\0032\0:\0013\3>\2\2\1G\0\1\0\17capabilities\1\0\0\nvimls\14lspconfig\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\1\0\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\1\0\1\tname\vbuffer\1\0\1\tname\14ultisnips\1\0\1\tname\rnvim_lsp\fsources\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\vconfig\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-d>\1\0\0\1\3\0\0\6i\6c\16scroll_docs\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\1\2È\5\0\0\b\0\30\00014\0\0\0%\1\1\0>\0\2\0027\0\2\0007\0\3\0002\1\0\0>\0\2\0014\0\0\0%\1\1\0>\0\2\0027\0\4\0007\0\3\0003\1\6\0003\2\5\0:\2\a\0013\2\27\0003\3\t\0003\4\b\0:\4\n\0033\4\v\0:\4\f\0033\4\14\0003\5\r\0:\5\15\4:\4\16\0033\4\22\0002\5\0\b4\6\17\0007\6\18\0067\6\19\6%\a\20\0>\6\2\2)\a\2\0009\a\6\0054\6\17\0007\6\18\0067\6\19\6%\a\21\0>\6\2\2)\a\2\0009\a\6\5:\5\23\4:\4\24\0033\4\25\0:\4\26\3:\3\28\2:\2\29\1>\0\2\1G\0\1\0\rsettings\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\2\15maxPreload\3Ð\15\20preloadFileSize\3Ð†\3\28$VIMRUNTIME/lua/vim/lsp\20$VIMRUNTIME/lua\vexpand\afn\bvim\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\15completion\1\0\1\16callSnippet\tBoth\fruntime\1\0\0\1\0\2\tpath\20/usr/bin/luajit\fversion\vLuaJIT\bcmd\1\0\0\1\4\0\0k/home/bertold/.local/share/nvim/lsp_servers/sumneko_lua/extension/server/bin/Linux/lua-language-server\a-E`/home/bertold/.local/share/nvim/lsp_servers/sumneko_lua/extension/server/bin/Linux/main.lua\16sumneko_lua\nsetup\nvimls\14lspconfig\frequire\0" },
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-neoclip.lua"] = {
    config = { "\27LJ\1\2f\0\0\2\0\5\0\f4\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\0\0%\1\3\0>\0\2\0027\0\4\0%\1\1\0>\0\2\1G\0\1\0\19load_extension\14telescope\nsetup\fneoclip\frequire\0" },
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/nvim-neoclip.lua",
    url = "https://github.com/AckslD/nvim-neoclip.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
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
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["quick-scope"] = {
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
    config = { '\27LJ\1\2å\6\0\0\6\0#\1Y4\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0012\0\n\0004\1\3\0007\1\4\0017\1\5\1%\2\6\0%\3\a\0%\4\b\0003\5\t\0>\1\5\2;\1\1\0004\1\3\0007\1\4\0017\1\5\1%\2\6\0%\3\n\0%\4\v\0003\5\f\0>\1\5\2;\1\2\0004\1\3\0007\1\4\0017\1\5\1%\2\6\0%\3\r\0%\4\14\0003\5\15\0>\1\5\2;\1\3\0004\1\3\0007\1\4\0017\1\5\1%\2\6\0%\3\16\0%\4\17\0003\5\18\0>\1\5\2;\1\4\0004\1\3\0007\1\4\0017\1\5\1%\2\6\0%\3\19\0%\4\20\0003\5\21\0>\1\5\2;\1\5\0004\1\3\0007\1\4\0017\1\5\1%\2\6\0%\3\22\0%\4\23\0003\5\24\0>\1\5\2;\1\6\0004\1\3\0007\1\4\0017\1\5\1%\2\6\0%\3\25\0%\4\26\0003\5\27\0>\1\5\2;\1\a\0004\1\3\0007\1\4\0017\1\5\1%\2\6\0%\3\28\0%\4\29\0003\5\30\0>\1\5\2;\1\b\0004\1\3\0007\1\4\0017\1\5\1%\2\6\0%\3\31\0%\4 \0003\5!\0>\1\5\0<\1\0\0005\0"\0G\0\1\0\nafter\1\0\1\fnoremap\2\29:Telescope help_tags<CR>\15<leader>ft\1\0\1\fnoremap\2\29:Telescope registers<CR>\15<leader>fr\1\0\1\fnoremap\2#:Telescope command_history<CR>\15<leader>fh\1\0\1\fnoremap\2 :Telescope git_branches<CR>\15<leader>fb\1\0\1\fnoremap\2\31:Telescope colorscheme<CR>\15<leader>fc\1\0\1\fnoremap\2\29:Telescope man_pages<CR>\15<leader>fm\1\0\1\fnoremap\2\29:Telescope live_grep<CR>\15<leader>fa\1\0\1\fnoremap\2\29:Telescope git_files<CR>\15<leader>fg\1\0\1\fnoremap\2\30:Telescope find_files<CR>\15<leader>ff\6n\20nvim_set_keymap\bapi\bvim\nsetup\14telescope\frequire\19€€À™\4\0' },
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["traces.vim"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/traces.vim",
    url = "https://github.com/markonm/traces.vim"
  },
  ultisnips = {
    config = { '\27LJ\1\2Ñ\2\0\0\2\0\r\0\0254\0\0\0007\0\1\0%\1\3\0:\1\2\0004\0\0\0007\0\1\0%\1\3\0:\1\4\0004\0\0\0007\0\1\0%\1\6\0:\1\5\0004\0\0\0007\0\1\0%\1\b\0:\1\a\0004\0\0\0007\0\1\0%\1\n\0:\1\t\0004\0\0\0007\0\1\0003\1\f\0:\1\v\0G\0\1\0\1\3\0\0\18vim/UltiSnips\14UltiSnips UltiSnipsSnippetDirectories\21~/.vim/UltiSnips\25UltiSnipsSnippetsDir\fcontext"SuperTabDefaultCompletionType\n<c-z>!UltiSnipsJumpBackwardTrigger UltiSnipsJumpForwardTrigger\n<tab>\27UltiSnipsExpandTrigger\6g\bvim\0' },
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/ultisnips",
    url = "https://github.com/SirVer/ultisnips"
  },
  ["vim-cool"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/vim-cool",
    url = "https://github.com/romainl/vim-cool"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/vim-snippets",
    url = "https://github.com/honza/vim-snippets"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/bertold/.local/share/nvim/site/pack/packer/start/vim-startify",
    url = "https://github.com/mhinz/vim-startify"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\1\2Ö\3\0\0\6\0\15\1\0274\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\0012\0\3\0004\1\4\0007\1\5\0017\1\6\1%\2\a\0%\3\b\0%\4\t\0003\5\n\0>\1\5\2;\1\1\0004\1\4\0007\1\5\0017\1\6\1%\2\a\0%\3\v\0%\4\f\0003\5\r\0>\1\5\0<\1\0\0005\0\14\0G\0\1\0\nafter\1\0\1\fnoremap\2‚\1<cmd>lua require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false})<CR>\6M\1\0\1\fnoremap\2‚\1<cmd>lua require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR,  current_line_only = false})<CR>\6m\6n\20nvim_set_keymap\bapi\bvim\1\0\1\tkeys\rasdfjkl;\nsetup\bhop\frequire\5€€À™\4\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\1\2È\5\0\0\b\0\30\00014\0\0\0%\1\1\0>\0\2\0027\0\2\0007\0\3\0002\1\0\0>\0\2\0014\0\0\0%\1\1\0>\0\2\0027\0\4\0007\0\3\0003\1\6\0003\2\5\0:\2\a\0013\2\27\0003\3\t\0003\4\b\0:\4\n\0033\4\v\0:\4\f\0033\4\14\0003\5\r\0:\5\15\4:\4\16\0033\4\22\0002\5\0\b4\6\17\0007\6\18\0067\6\19\6%\a\20\0>\6\2\2)\a\2\0009\a\6\0054\6\17\0007\6\18\0067\6\19\6%\a\21\0>\6\2\2)\a\2\0009\a\6\5:\5\23\4:\4\24\0033\4\25\0:\4\26\3:\3\28\2:\2\29\1>\0\2\1G\0\1\0\rsettings\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\2\15maxPreload\3Ð\15\20preloadFileSize\3Ð†\3\28$VIMRUNTIME/lua/vim/lsp\20$VIMRUNTIME/lua\vexpand\afn\bvim\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\15completion\1\0\1\16callSnippet\tBoth\fruntime\1\0\0\1\0\2\tpath\20/usr/bin/luajit\fversion\vLuaJIT\bcmd\1\0\0\1\4\0\0k/home/bertold/.local/share/nvim/lsp_servers/sumneko_lua/extension/server/bin/Linux/lua-language-server\a-E`/home/bertold/.local/share/nvim/lsp_servers/sumneko_lua/extension/server/bin/Linux/main.lua\16sumneko_lua\nsetup\nvimls\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\1\2:\0\1\3\0\4\0\0064\1\0\0007\1\1\0017\1\2\0017\2\3\0>\1\2\1G\0\1\0\tbody\19UltiSnips#Anon\afn\bvimÚ\6\1\0\b\0004\0m4\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\6\0003\3\4\0001\4\3\0:\4\5\3:\3\a\0023\3\v\0007\4\b\0007\5\b\0007\5\t\5'\6üÿ>\5\2\0023\6\n\0>\4\3\2:\4\f\0037\4\b\0007\5\b\0007\5\t\5'\6\4\0>\5\2\0023\6\r\0>\4\3\2:\4\14\0037\4\b\0007\5\b\0007\5\15\5>\5\1\0023\6\16\0>\4\3\2:\4\17\0037\4\18\0007\4\19\4:\4\20\0037\4\b\0003\5\22\0007\6\b\0007\6\21\6>\6\1\2:\6\23\0057\6\b\0007\6\24\6>\6\1\2:\6\25\5>\4\2\2:\4\26\0037\4\b\0007\4\27\0043\5\28\0>\4\2\2:\4\29\3:\3\b\0027\3\18\0007\3\30\0032\4\4\0003\5\31\0;\5\1\0043\5 \0;\5\2\0043\5!\0;\5\3\4>\3\2\2:\3\30\2>\1\2\0017\1\2\0007\1\"\1%\2#\0003\3%\0002\4\3\0003\5$\0;\5\1\4:\4\30\3>\1\3\0017\1\2\0007\1\"\1%\2&\0003\3)\0007\4\18\0007\4\30\0042\5\3\0003\6'\0;\6\1\0052\6\3\0003\a(\0;\a\1\6>\4\3\2:\4\30\3>\1\3\0014\1\0\0%\2*\0>\1\2\0027\1+\0014\2,\0007\2-\0027\2.\0027\2/\2>\2\1\0=\1\0\0024\2\0\0%\0030\0>\2\2\0027\0021\0027\2\2\0023\0032\0:\0013\3>\2\2\1G\0\1\0\17capabilities\1\0\0\nvimls\14lspconfig\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\1\0\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\1\0\1\tname\vbuffer\1\0\1\tname\14ultisnips\1\0\1\tname\rnvim_lsp\fsources\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\vconfig\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-d>\1\0\0\1\3\0\0\6i\6c\16scroll_docs\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\1\0026\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: clever-f.vim
time([[Config for clever-f.vim]], true)
try_loadstring("\27LJ\1\2¥\1\0\0\2\0\6\0\0174\0\0\0007\0\1\0'\1\1\0:\1\2\0004\0\0\0007\0\1\0'\1\0\0:\1\3\0004\0\0\0007\0\1\0'\1\0\0:\1\4\0004\0\0\0007\0\1\0'\1\1\0:\1\5\0G\0\1\0\23clever_f_mark_char\25clever_f_mark_direct\24clever_f_smart_case\28clever_f_across_no_line\6g\bvim\0", "config", "clever-f.vim")
time([[Config for clever-f.vim]], false)
-- Config for: nvim-neoclip.lua
time([[Config for nvim-neoclip.lua]], true)
try_loadstring("\27LJ\1\2f\0\0\2\0\5\0\f4\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\0\0%\1\3\0>\0\2\0027\0\4\0%\1\1\0>\0\2\1G\0\1\0\19load_extension\14telescope\nsetup\fneoclip\frequire\0", "config", "nvim-neoclip.lua")
time([[Config for nvim-neoclip.lua]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring('\27LJ\1\2å\6\0\0\6\0#\1Y4\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0012\0\n\0004\1\3\0007\1\4\0017\1\5\1%\2\6\0%\3\a\0%\4\b\0003\5\t\0>\1\5\2;\1\1\0004\1\3\0007\1\4\0017\1\5\1%\2\6\0%\3\n\0%\4\v\0003\5\f\0>\1\5\2;\1\2\0004\1\3\0007\1\4\0017\1\5\1%\2\6\0%\3\r\0%\4\14\0003\5\15\0>\1\5\2;\1\3\0004\1\3\0007\1\4\0017\1\5\1%\2\6\0%\3\16\0%\4\17\0003\5\18\0>\1\5\2;\1\4\0004\1\3\0007\1\4\0017\1\5\1%\2\6\0%\3\19\0%\4\20\0003\5\21\0>\1\5\2;\1\5\0004\1\3\0007\1\4\0017\1\5\1%\2\6\0%\3\22\0%\4\23\0003\5\24\0>\1\5\2;\1\6\0004\1\3\0007\1\4\0017\1\5\1%\2\6\0%\3\25\0%\4\26\0003\5\27\0>\1\5\2;\1\a\0004\1\3\0007\1\4\0017\1\5\1%\2\6\0%\3\28\0%\4\29\0003\5\30\0>\1\5\2;\1\b\0004\1\3\0007\1\4\0017\1\5\1%\2\6\0%\3\31\0%\4 \0003\5!\0>\1\5\0<\1\0\0005\0"\0G\0\1\0\nafter\1\0\1\fnoremap\2\29:Telescope help_tags<CR>\15<leader>ft\1\0\1\fnoremap\2\29:Telescope registers<CR>\15<leader>fr\1\0\1\fnoremap\2#:Telescope command_history<CR>\15<leader>fh\1\0\1\fnoremap\2 :Telescope git_branches<CR>\15<leader>fb\1\0\1\fnoremap\2\31:Telescope colorscheme<CR>\15<leader>fc\1\0\1\fnoremap\2\29:Telescope man_pages<CR>\15<leader>fm\1\0\1\fnoremap\2\29:Telescope live_grep<CR>\15<leader>fa\1\0\1\fnoremap\2\29:Telescope git_files<CR>\15<leader>fg\1\0\1\fnoremap\2\30:Telescope find_files<CR>\15<leader>ff\6n\20nvim_set_keymap\bapi\bvim\nsetup\14telescope\frequire\19€€À™\4\0', "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: ultisnips
time([[Config for ultisnips]], true)
try_loadstring('\27LJ\1\2Ñ\2\0\0\2\0\r\0\0254\0\0\0007\0\1\0%\1\3\0:\1\2\0004\0\0\0007\0\1\0%\1\3\0:\1\4\0004\0\0\0007\0\1\0%\1\6\0:\1\5\0004\0\0\0007\0\1\0%\1\b\0:\1\a\0004\0\0\0007\0\1\0%\1\n\0:\1\t\0004\0\0\0007\0\1\0003\1\f\0:\1\v\0G\0\1\0\1\3\0\0\18vim/UltiSnips\14UltiSnips UltiSnipsSnippetDirectories\21~/.vim/UltiSnips\25UltiSnipsSnippetsDir\fcontext"SuperTabDefaultCompletionType\n<c-z>!UltiSnipsJumpBackwardTrigger UltiSnipsJumpForwardTrigger\n<tab>\27UltiSnipsExpandTrigger\6g\bvim\0', "config", "ultisnips")
time([[Config for ultisnips]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\1\2”\1\0\0\3\0\b\0\v3\0\0\0005\0\1\0004\0\2\0%\1\3\0>\0\2\0027\0\4\0003\1\6\0003\2\5\0:\2\a\1>\0\2\1G\0\1\0\foptions\1\0\0\1\0\1\ntheme\fdracula\nsetup\flualine\frequire\rrequires\1\2\1\0!kyazdani42/nvim-web-devicons\bopt\2\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
