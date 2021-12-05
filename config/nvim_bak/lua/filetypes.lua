-- Setting based on file type

-- This is from https://github.com/sgeb/vim-diff-fold/

vim.cmd [[
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
]]

-- XML

vim.cmd [[
    let g:xml_syntax_folding=1

    au BufEnter,BufCreate *.xml,*.wsdl,*.xslt,*.xsl set filetype=xml
    au BufEnter,BufRead *.xml if search('nashornJs', 'nw') | setlocal ft=javascript | endif

    " Format XML files with xmllint
    nnoremap =x :exe ":silent %!xmllint --format --recover - 2>/dev/null"<CR>:set filetype=xml<CR>

    " Go to a sequence file in a WSO2 project
    nnoremap <F9> :cd %:h<CR>yi":e ../sequences/".xml<CR>
]]

-- Lua
vim.cmd [[
augroup LSPSTOP
    au!
    au FileType lua setlocal
    au BufEnter,BufRead plugins.lua :LspStop<CR>
augroup END
]]

-- XSLT

--function! XSLTransform()
    --execute "chdir %:h"

    --let l:base_name = expand("%:r")
    --let l:xml_name  = expand(l:base_name) . ".xml"
    --let l:xsl_name  = expand(l:base_name) . ".xslt"
    --let l:html_name = expand(l:base_name) . ".html"

    --execute "!start Transform -o:" . expand(l:html_name) . " " . expand(l:xml_name) . " " . expand(l:xsl_name)
    --execute "tabedit " . expand(l:html_name)

--endfunction

--map <leader>xs :call XSLTransform()<CR>

-- JSON

-- Format JSON files with python
vim.cmd [[
    au BufEnter *.json map =x :%!python -m json.tool<CR>
]]

vim.cmd [[
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
nnoremap <silent> <leader>7 :call HiInterestingWord(7)<cr>
nnoremap <silent> <leader>8 :call HiInterestingWord(8)<cr>

hi def InterestingWord1 guifg=#000000 ctermfg=16 guibg=#ffa724 ctermbg=214
hi def InterestingWord2 guifg=#000000 ctermfg=16 guibg=#aeee00 ctermbg=154
hi def InterestingWord3 guifg=#000000 ctermfg=16 guibg=#8cffba ctermbg=121
hi def InterestingWord4 guifg=#000000 ctermfg=16 guibg=#b88853 ctermbg=137
hi def InterestingWord5 guifg=#000000 ctermfg=16 guibg=#ff9eb8 ctermbg=211
hi def InterestingWord6 guifg=#000000 ctermfg=16 guibg=#ff2c4b ctermbg=195
hi def InterestingWord7 guifg=#000000 ctermfg=16 guibg=#ff794b ctermbg=177
hi def InterestingWord8 guifg=#000000 ctermfg=16 guibg=#af2c4b ctermbg=195
]]
--]]]
