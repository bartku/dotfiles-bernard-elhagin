" Speed up start
if has('python3')
endif

filetype off

set history=5000
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
set lazyredraw
set ignorecase
set hlsearch
set smartcase
set number
set relativenumber
set gdefault
set nobackup
set noswapfile
set autoread
set fileformats=unix,dos
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set autoindent
set smartindent
set nowrap
set laststatus=2
set path+=.,~/Devel/Projects/**
set suffixesadd+=.xml
set autochdir
set synmaxcol=200
set foldcolumn=0
set diffopt=internal,filler,context:3,indent-heuristic,algorithm:patience
set clipboard^=unnamed
set hidden
set updatetime=1000
set timeoutlen=300
set splitbelow splitright
set pumheight=12
set termguicolors
set completeopt=menu,menuone,noselect
set foldlevelstart=9999
set foldmethod=marker
set foldmarker=[[[,]]]

set fillchars=diff:∙                  " BULLET OPERATOR (U+2219, UTF-8: E2 88 99)
set fillchars+=fold:·                 " MIDDLE DOT (U+00B7, UTF-8: C2 B7)
set fillchars+=vert:┃                 " BOX DRAWINGS HEAVY VERTICAL (U+2503, UTF-8: E2 94 83)

set list                              " show whitespace
set listchars=nbsp:⦸                  " CIRCLED REVERSE SOLIDUS (U+29B8, UTF-8: E2 A6 B8)
"set listchars+=tab:▸\ ,eol:¬
set listchars+=tab:▷-                 " WHITE RIGHT-POINTING TRIANGLE (U+25B7, UTF-8: E2 96 B7)
                                      " + BOX DRAWINGS HEAVY TRIPLE DASH HORIZONTAL (U+2505, UTF-8: E2 94 85)
set listchars+=extends:»              " RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00BB, UTF-8: C2 BB)
set listchars+=precedes:«             " LEFT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00AB, UTF-8: C2 AB)
set listchars+=trail:•                " BULLET (U+2022, UTF-8: E2 80 A2)

if !isdirectory($HOME . '/tmp/.NVIM_UNDO_FILES')
    call mkdir($HOME . '/tmp/.NVIM_UNDO_FILES', "p")
endif

set undodir=$HOME/tmp/.NVIM_UNDO_FILES
set undolevels=5000
set undofile

" Goto last location in non-empty files
autocmd BufReadPost *  if line("'\"") > 1 && line("'\"") <= line("$")
                   \|     exe "normal! g`\""
                   \|  endif

autocmd! BufWritePost $MYVIMRC source $MYVIMRC | echom "Reloaded $MYVIMRC"
syntax enable
