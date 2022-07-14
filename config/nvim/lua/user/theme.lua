vim.cmd [[
    "colorscheme moonfly
    "colorscheme nord
    "colorscheme orbital
    "colorscheme kanagawa
    "colorscheme github
    "colorscheme edge
    "colorscheme space-vim-dark
    "colorscheme archery
    colorscheme vscode

    " hi Pmenu  gui=bold guifg=hotpink guibg=#123456
    " hi Visual gui=bold guifg=#F6F9FC guibg=#0088CC
    hi Search gui=bold guifg=#F6F9FC guibg=#0088CC
    hi QuickScopePrimary guifg=red gui=bold
    hi QuickScopeSecondary guifg=yellow gui=bold
    hi Normal guibg=grey7
    hi Directory guibg=bg gui=bold

    call textobj#user#plugin('datetime', {
    \   'date': {
    \     'pattern': '\<\d\d\d\d-\d\d-\d\d\>',
    \     'select': ['ad', 'id'],
    \   },
    \   'time': {
    \     'pattern': '\<\d\d:\d\d:\d\d\>',
    \     'select': ['at', 'it'],
    \   },
    \ })
]]
