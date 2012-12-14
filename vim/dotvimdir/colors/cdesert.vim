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
let g:colors_name="cdesert"

hi Normal       guifg=#ffffff ctermfg=15 guibg=#333333 ctermbg=236

" highlight groups
hi Cursor       guibg=#F0E68C ctermbg=222 guifg=#708090 ctermfg=66
"hi CursorIM
"hi Directory
"hi DiffAdd
"hi DiffChange
"hi DiffDelete
"hi DiffText
"hi ErrorMsg
hi VertSplit    guibg=#c2bfa5 ctermbg=250 guifg=#7F7F7F ctermfg=8
hi Folded       guibg=#4D4D4D ctermbg=239 guifg=#FFD700 ctermfg=220
hi FoldColumn   guibg=#4D4D4D ctermbg=239 guifg=#D2B48C ctermfg=180
hi IncSearch    guifg=#708090 ctermfg=66 guibg=#F0E68C ctermbg=222
"hi LineNr
hi ModeMsg      guifg=#DAA520 ctermfg=178
hi MoreMsg      guifg=#2E8B57 ctermfg=29
hi NonText      guifg=#ADD8E6 ctermfg=152 guibg=#4D4D4D ctermbg=239
hi Question     guifg=#00FF7F ctermfg=48
hi Search       guibg=#CD853F ctermbg=173 guifg=#F5DEB3 ctermfg=223
hi SpecialKey   guifg=#9ACD32 ctermfg=113
hi StatusLine   guibg=#c2bfa5 ctermbg=250 guifg=#000000 ctermfg=0
hi StatusLineNC guibg=#c2bfa5 ctermbg=250 guifg=#7F7F7F ctermfg=8
hi Title        guifg=#CD5C5C ctermfg=167
hi Visual       guifg=#F0E68C ctermfg=222 guibg=#6B8E23 ctermbg=64
"hi VisualNOS
hi WarningMsg   guifg=#FA8072 ctermfg=209
"hi WildMenu
"hi Menu
"hi Scrollbar
"hi Tooltip

" syntax highlighting groups
hi Comment      guifg=#87CEFA ctermfg=117
hi Constant     guifg=#ffa0a0 ctermfg=217
hi Identifier   guifg=#98FB98 ctermfg=120
hi Statement    guifg=#F0E68C ctermfg=222
hi PreProc      guifg=#CD5C5C ctermfg=167
hi Type         guifg=#BDB76B ctermfg=143
hi Special      guifg=#FFDEAD ctermfg=223
"hi Underlined
hi Ignore       guifg=#666666 ctermfg=241
"hi Error
hi Todo         guifg=#FF4500 ctermfg=202 guibg=#EEEE00 ctermbg=11


"vim: sw=4
