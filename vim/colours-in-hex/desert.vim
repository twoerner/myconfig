" Vim color file
" Maintainer:   Hans Fugal <hans@fugal.net>
" Last Change:  $Date: 2004/06/13 19:30:30 $
" Last Change:  $Date: 2004/06/13 19:30:30 $
" URL:          http://hans.fugal.net/vim/colors/desert.vim
" Version:      $Id: desert.vim,v 1.1 2004/06/13 19:30:30 vimboss Exp $

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="desert"

hi Normal       guifg=#ffffff guibg=#333333

" highlight groups
hi Cursor       guibg=#F0E68C guifg=#708090
"hi CursorIM
"hi Directory
"hi DiffAdd
"hi DiffChange
"hi DiffDelete
"hi DiffText
"hi ErrorMsg
hi VertSplit    guibg=#c2bfa5 guifg=#7F7F7F
hi Folded       guibg=#4D4D4D guifg=#FFD700
hi FoldColumn   guibg=#4D4D4D guifg=#D2B48C
hi IncSearch    guifg=#708090 guibg=#F0E68C
"hi LineNr
hi ModeMsg      guifg=#DAA520
hi MoreMsg      guifg=#2E8B57
hi NonText      guifg=#ADD8E6 guibg=#4D4D4D
hi Question     guifg=#00FF7F
hi Search       guibg=#CD853F guifg=#F5DEB3
hi SpecialKey   guifg=#9ACD32
hi StatusLine   guibg=#c2bfa5 guifg=#000000
hi StatusLineNC guibg=#c2bfa5 guifg=#7F7F7F
hi Title        guifg=#CD5C5C
hi Visual       guifg=#F0E68C guibg=#6B8E23
"hi VisualNOS
hi WarningMsg   guifg=#FA8072
"hi WildMenu
"hi Menu
"hi Scrollbar
"hi Tooltip

" syntax highlighting groups
hi Comment      guifg=#87CEFA
hi Constant     guifg=#ffa0a0
hi Identifier   guifg=#98FB98
hi Statement    guifg=#F0E68C
hi PreProc      guifg=#CD5C5C
hi Type         guifg=#BDB76B
hi Special      guifg=#FFDEAD
"hi Underlined
hi Ignore       guifg=#666666
"hi Error
hi Todo         guifg=#FF4500 guibg=#EEEE00


"vim: sw=4
