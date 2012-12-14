" Vim color file
" Maintainer:   David Schweikert <dws@ee.ethz.ch>
" Last Change:  2006 Apr 30

hi clear

let colors_name = "cdelek"

" Normal should come first
hi Normal     guifg=#000000 ctermfg=0  guibg=#ffffff ctermbg=15
hi Cursor     guifg=bg     guibg=fg
hi lCursor    guifg=NONE   guibg=#00FFFF ctermbg=14

" Note: we never set 'term' because the defaults for B&W terminals are OK
hi DiffAdd    guibg=#ADD8E6 ctermbg=152
hi DiffChange guibg=#FFBBFF ctermbg=219
hi DiffDelete guifg=#0000FF ctermfg=21 guibg=#E0FFFF ctermbg=195
hi DiffText   guibg=#FF0000 ctermbg=9
hi Directory  guifg=#0000FF ctermfg=21
hi ErrorMsg   guibg=#FF0000 ctermbg=9            guifg=#ffffff ctermfg=15
hi FoldColumn guibg=#7F7F7F ctermbg=8           guifg=#00008B ctermfg=18
hi Folded     guibg=#D3D3D3 ctermbg=252 guifg=#00008B ctermfg=18
hi LineNr     guifg=#8B4726 ctermfg=94
hi MoreMsg    guifg=#2E8B57 ctermfg=29
hi NonText    guifg=#7F7F7F ctermfg=8 guibg=#ffffff ctermbg=15
hi Pmenu      guibg=#ADD8E6 ctermbg=152
hi PmenuSel   guifg=#ffffff ctermfg=15  guibg=#00008B ctermbg=18
hi Question   guifg=#2E8B57 ctermfg=29
hi Search     guibg=#FFFF00 ctermbg=11 guifg=NONE
hi SpecialKey guifg=#0000FF ctermfg=21
hi StatusLine guibg=#FFD700 ctermbg=220 guifg=#0000FF ctermfg=21
hi StatusLineNC guibg=#FFD700 ctermbg=220 guifg=#0000FF ctermfg=21
hi Title      guifg=#FF00FF ctermfg=13
hi Visual     guifg=#7F7F7F ctermfg=8 guibg=fg
hi WarningMsg guifg=#FF0000 ctermfg=9
hi WildMenu   guibg=#FFFF00 ctermbg=11 guifg=#000000 ctermfg=0

" syntax highlighting
hi Comment    guifg=#EE0000 ctermfg=9
hi Constant   guifg=#00CD00 ctermfg=2
hi Identifier guifg=#008B8B ctermfg=30
hi PreProc    guifg=#CD00CD ctermfg=5
hi Special    guifg=#FF1493 ctermfg=198
hi Statement  guifg=#0000FF ctermfg=21
hi Type       guifg=#0000FF ctermfg=21

" vim: sw=2
