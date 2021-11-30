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
    use 'whatsthatsmell/codesmell_dark.vim'
end)

--[[
" Download vim-plug if necessary
let data_dir = '~/.local/share/nvim/site'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let g:python3_host_prog='/usr/bin/python3'

call plug#begin('~/.local/share/nvim/site/plugged')

source ~/.config/nvim/plugins/vim-colorschemes.vim
source ~/.config/nvim/plugins/ultisnips.vim
source ~/.config/nvim/plugins/vim-snippets.vim
source ~/.config/nvim/plugins/vim-easymotion.vim
source ~/.config/nvim/plugins/vim-airline.vim
source ~/.config/nvim/plugins/vim-fugitive.vim
source ~/.config/nvim/plugins/vim-vinegar.vim
source ~/.config/nvim/plugins/vim-repeat.vim
source ~/.config/nvim/plugins/gundo.vim.vim
source ~/.config/nvim/plugins/tabular.vim
source ~/.config/nvim/plugins/vim-misc.vim
source ~/.config/nvim/plugins/vim-colorscheme-switcher.vim
source ~/.config/nvim/plugins/vim-gitgutter.vim
source ~/.config/nvim/plugins/vim-airline-themes.vim
source ~/.config/nvim/plugins/MatchTagAlways.vim
source ~/.config/nvim/plugins/gitv.vim
source ~/.config/nvim/plugins/vim-startify.vim
source ~/.config/nvim/plugins/vim-rooter.vim
source ~/.config/nvim/plugins/xmledit.vim
source ~/.config/nvim/plugins/diffconflicts.vim
source ~/.config/nvim/plugins/quick-scope.vim
source ~/.config/nvim/plugins/CSApprox.vim
source ~/.config/nvim/plugins/vimux.vim
source ~/.config/nvim/plugins/vim-tmux-navigator.vim
source ~/.config/nvim/plugins/ctrlsf.vim.vim
source ~/.config/nvim/plugins/awesome-vim-colorschemes.vim
source ~/.config/nvim/plugins/nerdcommenter.vim
source ~/.config/nvim/plugins/vim-prettier.vim
source ~/.config/nvim/plugins/vim-sandwich.vim
source ~/.config/nvim/plugins/base16-vim.vim
source ~/.config/nvim/plugins/vim-cool.vim
source ~/.config/nvim/plugins/traces.vim.vim
source ~/.config/nvim/plugins/clever-f.vim.vim
source ~/.config/nvim/plugins/vim-textobj-user.vim
source ~/.config/nvim/plugins/vim-textobj-entire.vim
source ~/.config/nvim/plugins/vim-textobj-between.vim
source ~/.config/nvim/plugins/vim-endoscope.vim
source ~/.config/nvim/plugins/vim-polyglot.vim
source ~/.config/nvim/plugins/vim-arduino.vim
source ~/.config/nvim/plugins/popup.nvim.vim
source ~/.config/nvim/plugins/plenary.nvim.vim
source ~/.config/nvim/plugins/telescope.nvim.vim
source ~/.config/nvim/plugins/telescope-fzy-native.nvim.vim
source ~/.config/nvim/plugins/nvim-treesitter.vim
source ~/.config/nvim/plugins/nvim-treesitter-textobjects.vim
source ~/.config/nvim/plugins/playground.vim
source ~/.config/nvim/plugins/nvim-web-devicons.vim
source ~/.config/nvim/plugins/gitsigns.nvim.vim
source ~/.config/nvim/plugins/nvim-lspconfig.vim
source ~/.config/nvim/plugins/nvim-cmp.vim
source ~/.config/nvim/plugins/cmp-buffer.vim
source ~/.config/nvim/plugins/cmp-nvim-lsp.vim
source ~/.config/nvim/plugins/cmp-path.vim
source ~/.config/nvim/plugins/cmp-cmdline.vim
source ~/.config/nvim/plugins/nvim-lsp-installer.vim
source ~/.config/nvim/plugins/NrrwRgn.vim
source ~/.config/nvim/plugins/nvim-neoclip.lua.vim
source ~/.config/nvim/plugins/highilight_word.vim
source ~/.config/nvim/plugins/rest.nvim.vim
source ~/.config/nvim/plugins/codesmell_dark.vim.lua

call plug#end()

doautocmd User PlugLoaded

filetype plugin indent on

" Avoid search, speeding up start-up.
if filereadable('/usr/bin/python3')
  let g:python3_host_prog='/usr/bin/python3'
  let g:pymode_python='python3'
endif
]]
