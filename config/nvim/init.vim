" init.vim
"
" Author: Bernard El-Hagin <bernard.elhagin@gmail.com>
" http://github.com/bernard-elhagin/dotfiles
"
set nocompatible

" Speed up start
if has('python3')
endif

filetype off

source ~/.config/nvim/plugins.vim     " Initialize plugins
source ~/.config/nvim/options.vim     " Basic Options
source ~/.config/nvim/mappings.vim    " Mappings

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
au BufEnter,BufRead *.xml if search('nashornJs', 'nw') | setlocal ft=javascript | endif

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
