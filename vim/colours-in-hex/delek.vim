" Vim color file
" Maintainer:   David Schweikert <dws@ee.ethz.ch>
" Last Change:  2006 Apr 30

hi clear

let colors_name = "delek"

" Normal should come first
hi Normal     guifg=#000000  guibg=#ffffff
hi Cursor     guifg=bg     guibg=fg
hi lCursor    guifg=NONE   guibg=#00FFFF

" Note: we never set 'term' because the defaults for B&W terminals are OK
hi DiffAdd    guibg=#ADD8E6
hi DiffChange guibg=#FFBBFF
hi DiffDelete guifg=#0000FF guibg=#E0FFFF
hi DiffText   guibg=#FF0000
hi Directory  guifg=#0000FF
hi ErrorMsg   guibg=#FF0000            guifg=#ffffff
hi FoldColumn guibg=#7F7F7F           guifg=#00008B
hi Folded     guibg=#D3D3D3 guifg=#00008B
hi LineNr     guifg=#8B4726
hi MoreMsg    guifg=#2E8B57
hi NonText    guifg=#7F7F7F guibg=#ffffff
hi Pmenu      guibg=#ADD8E6
hi PmenuSel   guifg=#ffffff  guibg=#00008B
hi Question   guifg=#2E8B57
hi Search     guibg=#FFFF00 guifg=NONE
hi SpecialKey guifg=#0000FF
hi StatusLine guibg=#FFD700 guifg=#0000FF
hi StatusLineNC guibg=#FFD700 guifg=#0000FF
hi Title      guifg=#FF00FF
hi Visual     guifg=#7F7F7F guibg=fg
hi WarningMsg guifg=#FF0000
hi WildMenu   guibg=#FFFF00 guifg=#000000

" syntax highlighting
hi Comment    guifg=#EE0000
hi Constant   guifg=#00CD00
hi Identifier guifg=#008B8B
hi PreProc    guifg=#CD00CD
hi Special    guifg=#FF1493
hi Statement  guifg=#0000FF
hi Type       guifg=#0000FF

" vim: sw=2
