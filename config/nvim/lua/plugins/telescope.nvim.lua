Plug 'nvim-telescope/telescope.nvim'

set wildignore+=*\\tmp\\*,*.sw?,*.zip,*.settings,*.esb_diagram,*\\*sandbox\\*,*.classpath,*\\.meta\\*
set wildignore+=.git,*.orig
set wildignore+=*.exe,*.o,*.obj,*.dll,*.manifest
set wildignore+=*.jpg,*.jpeg,*.bmp,*.gif,*.png

nnoremap <leader>ff :Telescope find_files<CR>
nnoremap <leader>fg :Telescope git_files<CR>
nnoremap <leader>fa :Telescope live_grep<CR>
nnoremap <leader>fm :Telescope man_pages<CR>
nnoremap <leader>fc :Telescope colorscheme<CR>
nnoremap <leader>fb :Telescope git_branches<CR>
nnoremap <leader>fh :Telescope command_history<CR>
nnoremap <leader>fr :Telescope registers<CR>
nnoremap <leader>ft :Telescope help_tags<CR>
