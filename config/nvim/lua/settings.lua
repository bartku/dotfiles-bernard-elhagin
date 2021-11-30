vim.opt.history = 5000
vim.opt.encoding = 'utf-8'
vim.opt.showmode = false
vim.opt.scrolloff = 8
vim.opt.wildmenu = true
vim.opt.wildmode = 'full'
vim.opt.wildoptions = { 'pum', 'tagfile' }
vim.opt.ruler = true
vim.opt.cmdheight = 2
vim.opt.backspace = { 'indent', 'eol', 'start' }
vim.opt.incsearch = true
vim.opt.magic = true
vim.opt.showmatch = true
vim.opt.errorbells = false
vim.opt.visualbell = false
vim.opt.lazyredraw = true
vim.opt.ignorecase = true
vim.opt.hlsearch = true
vim.opt.smartcase = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.gdefault = true
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.autoread = true
vim.opt.fileformats = { 'unix', 'dos' }
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smarttab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.laststatus = 2
vim.opt.path = { '.', '/usr/include', '/home/bertold/Devel/Projects/**' }
vim.opt.suffixesadd = { '.lua', '.xml' }
vim.opt.autochdir = true
vim.opt.synmaxcol = 200
vim.opt.foldcolumn = '0'
vim.opt.diffopt = { 'internal', 'filler', 'context:3', 'indent-heuristic', 'algorithm:patience' }
vim.opt.clipboard = 'unnamed'
vim.opt.hidden = true
vim.opt.updatetime = 1000
vim.opt.timeoutlen = 300
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.pumheight = 12
vim.opt.termguicolors = true
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
vim.opt.foldlevelstart = 9999
vim.opt.foldmethod = 'marker'
vim.opt.foldmarker = '[[[,]]]'

vim.opt.fillchars = 'diff:∙'              -- BULLET OPERATOR (U+2219, UTF-8: E2 88 99)
vim.opt.fillchars:append('fold:·')        -- MIDDLE DOT (U+00B7, UTF-8: C2 B7)
vim.opt.fillchars:append('vert:┃')        -- BOX DRAWINGS HEAVY VERTICAL (U+2503, UTF-8: E2 94 83)

vim.opt.list = true
vim.opt.listchars = 'nbsp:⦸'              -- CIRCLED REVERSE SOLIDUS (U+29B8, UTF-8: E2 A6 B8)
vim.opt.listchars:append('tab:▷-')        -- WHITE RIGHT-POINTING TRIANGLE (U+25B7, UTF-8: E2 96 B7) + BOX DRAWINGS HEAVY TRIPLE DASH HORIZONTAL (U+2505, UTF-8: E2 94 85)
vim.opt.listchars:append('extends:»')     -- RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00BB, UTF-8: C2 BB)
vim.opt.listchars:append('precedes:«')    -- LEFT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00AB, UTF-8: C2 AB)
vim.opt.listchars:append('trail:•')       -- BULLET (U+2022, UTF-8: E2 80 A2)

vim.cmd [[
  if !isdirectory('/home/bertold/tmp/.NVIM_UNDO_FILES')
      call mkdir('/home/bertold/tmp/.NVIM_UNDO_FILES', "p")
  endif

  set undodir=/home/bertold/tmp/.NVIM_UNDO_FILES
  set undolevels=5000
  set undofile

  " Goto last location in non-empty files
  autocmd BufReadPost *  if line("'\"") > 1 && line("'\"") <= line("$")
                     \|     exe "normal! g`\""
                     \|  endif

  autocmd! BufWritePost $MYVIMRC source $MYVIMRC | echom "Reloaded $MYVIMRC"

  syntax enable
  " Change cursor shape/color depending on mode
  if &term =~ "xterm\\|rxvt"
    " use an orange cursor in insert mode
    let &t_SI = "\<Esc>]12;red\x7"
    " use a red cursor otherwise
    let &t_EI = "\<Esc>]12;red\x7"
    silent !echo -ne "\033]12;red\007"
    " reset cursor when vim exits
    autocmd VimLeave * silent !echo -ne "\033]112\007"
    " use \003]12;gray\007 for gnome-terminal and rxvt up to version 9.21
  endif

  if &term =~ "xterm\\|rxvt"
    " solid underscore
    let &t_SI .= "\<Esc>[5 q"
    " solid block
    let &t_EI .= "\<Esc>[1 q"
    " 1 or 0 -> blinking block
    " 3 -> blinking underscore
    " Recent versions of xterm (282 or above) also support
    " 5 -> blinking vertical bar
    " 6 -> solid vertical bar
  endif
]]
