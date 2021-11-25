" .vimrc
"
" Author: Bernard El-Hagin <bernard.elhagin@gmail.com>
" http://github.com/bernard-elhagin/dotfiles
"
set nocompatible

if has('python3')
endif

" Initialize ------------------------------------------------------------- [[[
filetype off

" Download vim-plug if necessary
let data_dir = '~/.local/share/nvim/site'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let g:python3_host_prog='/usr/bin/python3'

call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'flazz/vim-colorschemes'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'easymotion/vim-easymotion'
Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-repeat'
Plug 'sjl/gundo.vim'
Plug 'godlygeek/tabular'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline-themes'
Plug 'Valloric/MatchTagAlways'
Plug 'gregsexton/gitv'
Plug 'mhinz/vim-startify'
Plug 'airblade/vim-rooter'
Plug 'sukima/xmledit'
Plug 'whiteinge/diffconflicts'
Plug 'unblevable/quick-scope'
Plug 'vim-scripts/CSApprox'
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'
Plug 'dyng/ctrlsf.vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'scrooloose/nerdcommenter'
Plug 'prettier/vim-prettier'
Plug 'machakann/vim-sandwich'
Plug 'chriskempson/base16-vim'
Plug 'dracula/vim'
Plug 'romainl/vim-cool'
Plug 'markonm/traces.vim'
Plug 'rhysd/clever-f.vim'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'thinca/vim-textobj-between'
Plug 'idbrii/vim-endoscope'
Plug 'sheerun/vim-polyglot'
Plug 'stevearc/vim-arduino'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'nvim-treesitter/playground'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'lewis6991/gitsigns.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'williamboman/nvim-lsp-installer'
Plug 'chrisbra/NrrwRgn'
Plug 'whatsthatsmell/codesmell_dark.vim'
Plug 'AckslD/nvim-neoclip.lua'

call plug#end()

filetype plugin indent on

lua << GITSIGNS
    require('gitsigns').setup()
    require'lspconfig'.vimls.setup { }
    require('neoclip').setup()
    require('telescope').load_extension('neoclip')
GITSIGNS

lua << NVIMVMP
      -- Setup nvim-cmp.
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
      { name = 'ultisnips' }, -- For ultisnips users.
    }, {
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
NVIMVMP

if filereadable('/usr/bin/python3')
  " Avoid search, speeding up start-up.
  let g:python3_host_prog='/usr/bin/python3'
  let g:pymode_python='python3'
endif

" ]]]

" Basic Options ---------------------------------------------------------- [[[
set history=3000
set encoding=utf-8
set noshowmode
set scrolloff=8
set wildmenu
set wildmode=full
set wildoptions+=pum
set ruler
set cmdheight=2
set backspace=2
set incsearch
set magic
set showmatch
set noerrorbells
set novisualbell
set t_vb=
set lazyredraw
set ignorecase
set hls
set smartcase
set number
set relativenumber
set gdefault
set nobackup
set noswapfile
set dir=c:\tmp,c:\temp,.
set autoread
set ffs=unix,dos
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set ai
set si
set nowrap
set laststatus=2
set path+=.,~/Devel/Projects/**
set suffixesadd+=.xml
set listchars=tab:▸\ ,eol:¬
set autochdir
set synmaxcol=200
set fdc=0 " fold gutter
set diffopt=internal,filler,context:3,indent-heuristic,algorithm:patience
set clipboard^=unnamed
set hidden
set updatetime=1000
set timeoutlen=300
set splitbelow splitright

set fillchars=diff:∙               " BULLET OPERATOR (U+2219, UTF-8: E2 88 99)
set fillchars+=fold:·              " MIDDLE DOT (U+00B7, UTF-8: C2 B7)
set fillchars+=vert:┃              " BOX DRAWINGS HEAVY VERTICAL (U+2503, UTF-8: E2 94 83)

set list                              " show whitespace
set listchars=nbsp:⦸                  " CIRCLED REVERSE SOLIDUS (U+29B8, UTF-8: E2 A6 B8)
set listchars+=tab:▷-                 " WHITE RIGHT-POINTING TRIANGLE (U+25B7, UTF-8: E2 96 B7)
                                      " + BOX DRAWINGS HEAVY TRIPLE DASH HORIZONTAL (U+2505, UTF-8: E2 94 85)
set listchars+=extends:»              " RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00BB, UTF-8: C2 BB)
set listchars+=precedes:«             " LEFT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00AB, UTF-8: C2 AB)
set listchars+=trail:•                " BULLET (U+2022, UTF-8: E2 80 A2)

set completeopt=menu,menuone,noselect

if has('termguicolors')
    set termguicolors
endif

if has('persistent_undo')
    " Save all undo files in a single location (less messy, more risky)...
    "
    " First, create undo folder if it doesn't exist.
    if !isdirectory($HOME . '/tmp/.NVIM_UNDO_FILES')
        call mkdir($HOME . '/tmp/.NVIM_UNDO_FILES', "p")
    endif

    set undodir=$HOME/tmp/.VIM_UNDO_FILES

    " Save a lot of back-history...
    set undolevels=5000

    " Actually switch on persistent undo
    set undofile
endif

" Goto last location in non-empty files
autocmd BufReadPost *  if line("'\"") > 1 && line("'\"") <= line("$")
                   \|     exe "normal! g`\""
                   \|  endif

" Name tmux window with currently edited filename
" autocmd BufReadPost,FileReadPost,BufNewFile * call system("tmux rename-window " . expand("%:t"))

autocmd! BufWritePost $MYVIMRC source $MYVIMRC | echom "Reloaded $MYVIMRC"
syntax enable

" ]]]

" Mappings --------------------------------------------------------------- [[[

imap jk <ESC>
vnoremap jk <ESC>
cnoremap jk <C-U> <ESC>

let mapleader=' '
let maplocalleader='\\'

nnoremap ; :
nnoremap : ;

nnoremap <leader>s :w<CR>

nnoremap <leader>V :tabedit $MYVIMRC<CR>

" Paste the contents of clipboard
nnoremap <C-Space> "*p

" Copy whole file to clipboard and quit Vim
nnoremap <CS-Space> gg"*yG:q!<CR>

" Rerun last shell command
nnoremap <leader>r :!<UP><CR>

" Toggle paste mode
nnoremap <leader>p :set paste!<CR>

" Mappings for manipulating and moving around splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
nnoremap <leader>h <C-w>h
nnoremap <leader>x <C-w>c
nnoremap <leader>o <C-w>o
nnoremap <leader>_ <C-w>_

nnoremap <leader>q :QuickScopeToggle<CR>

" Set CWD to current file's PWD
noremap <F12> :cd %:h<CR>

" Switch to previous buffer
noremap <F2> :b#<CR>

" Swap two words (tn - current with next word; tp - current with previous)
nnoremap <silent> <leader>tn "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o>/\w\+\_W\+<CR><c-l>:nohlsearch<CR>
nnoremap <silent> <leader>tp "_yiw?\w\+\_W\+\%#<CR>:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o><c-l>:nohlsearch<CR>

nnoremap <F7> :tabprev<CR>

" Fold all, unfold all
nnoremap <leader>e :call Fold()<CR>

function! Fold()
    let foldlvl = eval("&foldlevel")
    if(foldlvl==0)
        set foldlevel=9999
    else
        set foldlevel=0
    endif
endfunction

"map 0 ^

" Toggle hls and matching with the <leader>N utility
"map <CR> :set hls!<CR>
nnoremap <BS> :call clearmatches()<CR>

" Show what highlight group symbol/word under cursor belongs to
nnoremap <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" .  synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" .  synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>

" Find all lines with word under cursor and give option to jump to one of the
" lines
" map <leader>f [I:let nr=input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>

" Format XML file with xmllint.exe
nnoremap =x :exe ":silent %!xmllint --format --recover - 2>/dev/null"<CR>:set filetype=xml<CR>

" Easier movement to start and end of line
noremap  H ^
noremap  L $
vnoremap L g_

" nnoremap / /\v
" vnoremap / /\v

"nnoremap ' `
"nnoremap ` '

imap {{ {}<ESC>O
imap ,, ,<CR>

nnoremap ZQ ZZ
nnoremap ZZ ZQ

nnoremap <tab> :bn<CR>
nnoremap <s-tab> :bp<CR>
nnoremap <leader>b :Telescope buffers<CR>

" Avoid unintentional switch to Ex mode.
nnoremap Q <nop>

noremap Y y$

cnoremap <C-a> <Home>
cnoremap <C-e> <End>

nnoremap <leader>n :call LineNumbers()<CR>

function! LineNumbers()
    set number!
    set relativenumber!
endfunction

" Remove all irrelevant lines from a bash file
" (or any file that uses # as a start of comment).
nnoremap <leader>Q :g/^#\\|\(^$\)/d<CR>

" Remove trailing whitespace
nnoremap <leader>w :%s/\s\+$//<CR>

" execute "!perl /home/bertold/Devel/Projects/wso2tools/add_artifact.pl " . system("git rev-parse --show-toplevel | tr -d '\\n'")

" Change/select object between //
onoremap <silent> i/ :<C-U>normal! T/vt/<CR>
onoremap <silent> a/ :<C-U>normal! F/vt/<CR>

xnoremap <silent> i/ :<C-U>normal! T/vt/<CR>
xnoremap <silent> a/ :<C-U>normal! F/vt/<CR>

onoremap <silent> iy :<C-U>execute "normal!?^---\r:nohlsearch\rjV/^---\rk"<cr>
onoremap <silent> ay :<C-U>execute "normal!?^---\r:nohlsearch\rV/^---\r"<cr>

xnoremap <silent> iy :<C-U>execute "normal!?^---\r:nohlsearch\rjV/^---\rk"<cr>
xnoremap <silent> ay :<C-U>execute "normal!?^---\r:nohlsearch\rV/^---\r"<cr>
" Go into mergetool mode
"map <leader>d :call DiffToolMode()<CR>

"function! DiffToolMode()
    "set nohls
nnoremap <leader>d :let @/='======='<CR>ggn
"endfunction

nnoremap <c-down> ddd/>>>>>><cr>dd?<<<<<<<cr>dd:let @/='======='<CR>
nnoremap <c-up> ddd?<<<<<<<cr>/>>>>>>><cr>dd:let @/='======='<CR>

inoremap <c-l> <right>
inoremap <c-h> <left>
inoremap <c-j> <ESC>A
inoremap <c-o> <ESC>I

nnoremap <F9> :cd %:h<CR>yi":e ../sequences/".xml<CR>
" ]]]

" Folding ---------------------------------------------------------------- [[[
set foldlevelstart=9999
set foldmethod=marker
set foldmarker=[[[,]]]

" Space to toggle folds.
nnoremap <leader>z za
vnoremap <leader>z za

" Make zO recursively open whatever fold we're in, even if it's partially open.
"nnoremap zO zczO

" 1. Close all folds.
" 2. Open just the folds containing the current line.
" 3. Move the line to a little bit (15 lines) above the center of the screen.
" 4. Pulse the cursor line.
"
"nnoremap <leader>z mzzMzvzz15<c-e>`z

"function! MyFoldText() " [[[
"    let line = getline(v:foldstart)
"
"    let nucolwidth = &fdc + &number * &numberwidth
"    let windowwidth = winwidth(0) - nucolwidth - 3
"    let foldedlinecount = v:foldend - v:foldstart
"
"    " expand tabs into spaces
"    let onetab = strpart('          ', 0, &tabstop)
"    let line = substitute(line, '\t', onetab, 'g')
"
"    let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
"    let fillcharcount = windowwidth - len(line) - len(foldedlinecount)
"    return line . '...' . repeat(" ",fillcharcount) . foldedlinecount . '...' . ' '
"endfunction " ]]]

"set foldtext=MyFoldText()

" ]]]

" GUI -------------------------------------------------------------------- [[[

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

let g:airline_theme='papercolor'

colorscheme codesmell_dark

set bg=dark

hi Search guibg=yellow guifg=black
hi Visual guibg=yellow guifg=black
hi String guifg=#5599aa gui=italic
hi Pmenu guibg=grey10 guifg=hotpink
hi Folded guibg=#171717 guifg=#3F7CB3 gui=italic
hi Visual guibg=#3f7cb3 guifg=grey10 gui=bold

hi QuickScopePrimary cterm=underline,bold gui=underline,bold ctermfg=red guifg=red
hi QuickScopeSecondary cterm=underline,bold gui=underline,bold ctermfg=cyan guifg=cyan
hi MatchParen guibg=bg guifg=red gui=bold

" ]]]

" Filetype Settings ------------------------------------------------------ [[[

" Diff [[[

" This is from https://github.com/sgeb/vim-diff-fold/

function! DiffFoldLevel()
    let l:line=getline(v:lnum)

    if l:line =~# '^\(diff\|Index\)'     " file
        return '>1'
    elseif l:line =~# '^\(@@\|\d\)'  " hunk
        return '>2'
    elseif l:line =~# '^\*\*\* \d\+,\d\+ \*\*\*\*$' " context: file1
        return '>2'
    elseif l:line =~# '^--- \d\+,\d\+ ----$'     " context: file2
        return '>2'
    else
        return '='
    endif
endfunction

augroup ft_diff
    au!

    autocmd FileType diff setlocal foldmethod=expr
    autocmd FileType diff setlocal foldexpr=DiffFoldLevel()
augroup END

"]]]
" XML[[[

let g:xml_syntax_folding=1
au BufEnter,BufCreate *.xml,*.wsdl,*.xslt,*.xsl set filetype=xml
au FileType xml setlocal foldmethod=syntax

"]]]
" XSLT[[[

function! XSLTransform()
    execute "chdir %:h"

    let l:base_name = expand("%:r")
    let l:xml_name  = expand(l:base_name) . ".xml"
    let l:xsl_name  = expand(l:base_name) . ".xslt"
    let l:html_name = expand(l:base_name) . ".html"

    execute "!start Transform -o:" . expand(l:html_name) . " " . expand(l:xml_name) . " " . expand(l:xsl_name)
    execute "tabedit " . expand(l:html_name)

endfunction

"map <leader>xs :call XSLTransform()<CR>

"]]]
" Log [[[

"au BufEnter *.log syntax off

"]]]
" JSON [[[

au BufEnter *.json map =x :%!python -m json.tool<CR>

"]]]

"]]]

" Plugin Settings -------------------------------------------------------- [[[

" EasyMotion [[[

let g:EasyMotion_do_mapping = 0

" Jump to anywhere you want with minimal keystrokes.
" s{char}{label}
nmap m <Plug>(easymotion-w)
nmap M <Plug>(easymotion-b)
nmap <leader><leader>j <Plug>(easymotion-bd-jk)

" Case insensitive
let g:EasyMotion_smartcase = 1

let g:EasyMotion_keys = 'asdfjkl;mvwo'

"]]]
" UltiSnips [[[

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:SuperTabDefaultCompletionType = 'context'

let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"
let g:UltiSnipsSnippetDirectories=["~/.vim/UltiSnips", "UltiSnips"]

let g:airline_powerline_fonts = 1

"]]]
" Fugitive [[[

nnoremap <leader>gs :silent Git<cr>
nnoremap <leader>gp :silent Gpull<cr>
nnoremap <leader>gd :silent Gdiff<cr>
nnoremap <leader>gw :silent Gwrite<cr>
nnoremap <leader>gb :silent Gblame<cr>
nnoremap <leader>gc :silent Gcommit<cr>
nnoremap <leader>gl :silent Shell git gl -18<cr>:wincmd \|<cr>

let g:gitgutter_map_keys = 0

"]]]
" Matchit [[[

if has('packages')
    if !has('nvim')
        packadd! matchit
    endif
else
    source $VIMRUNTIME/macros/matchit.vim
endif

"]]]
" Telescope [[[

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

"]]]
" Startify [[[

"let g:startify_header=''
let g:startify_custom_header = ''
let g:startify_change_to_vcs_root = 1

" ]]]
" Vimux [[[

let g:VimuxOrientation="h"
let g:VimuxHeight="35"

noremap <leader>vm :VimuxRunCommand("makeSpace.sh")<CR>
noremap <leader>vc :VimuxCloseRunner<CR>
noremap <leader>vr :VimuxRunLastCommand<CR>
noremap <leader>vi :VimuxInterruptRunner<CR>

" ]]]
" vim-tmux-navigator [[[
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>

"]]]
" DiffConflicts [[[
    "map <leader>dd  :DiffConflicts<cr>
    "map <leader>dsh :DiffConflictsShowHistory<cr>
    "map <leader>dh  :DiffConflictsWithHistory<cr>
"]]]
" Tagbar [[[
    nmap <F5> ;TagbarToggle<cr>
" ]]]
" Clever-f [[[
    let g:clever_f_across_no_line=1
    let g:clever_f_smart_case=0
    let g:clever_f_mark_direct=0
    let g:clever_f_mark_char=1
" ]]]
" vim-arduino [[[
    let g:arduino_cmd = '/home/bertold/bin/arduino-1.8.15/arduino'
    let g:arduino_dir = '/home/bertold/bin/arduino-1.8.15'
    let g:arduino_home_dir = '/home/bertold/.arduino15'
    let g:arduino_args = '--verbose-upload'
" ]]]

"]]]

" Utilities -------------------------------------------------------------- [[[

" Highlight Word [[[
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

" ]]]

" Search for pattern [[[
"
" https://gist.github.com/romainl/047aca21e338df7ccf771f96858edb86

function! CCR()
    " grab the current command-line
    let cmdline = getcmdline()

    " check if it ends with '#' or 'number'
    if cmdline =~ '\v\C/(#|nu|num|numb|numbe|number)$'
        " press '<cr>' then ':' the enter command-line mode
        return "\<cr>:"
    else
        " press '<cr>'
        return "\<cr>"
    endif
endfunction

cnoremap <expr> <cr> CCR()

" ]]]
"]]]
