" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:   Ron Aaron <ron@ronware.org>
" Last Change:  2003 May 02

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "ron"
hi Normal       guifg=#00FFFF  guibg=#000000
hi NonText      guifg=#8B4726
hi comment      guifg=#008000
hi constant     guifg=#00FFFF
hi identifier   guifg=#00FFFF
hi statement    guifg=#ADD8E6
hi preproc      guifg=#EEA9B8
hi type         guifg=#2E8B57
hi special      guifg=#FFFF00
hi ErrorMsg     guifg=#000000 guibg=#FF0000
hi WarningMsg   guifg=#000000 guibg=#008000
hi Error        guibg=#FF0000
hi Todo         guifg=#000000 guibg=#FFA500
hi Cursor       guibg=#60a060 guifg=#00ff00
hi Search       guibg=#8470FF
hi IncSearch    guibg=#4682B4
hi LineNr       guifg=#555555
hi title        guifg=#555555
hi StatusLineNC guifg=#ADD8E6 guibg=#00008B
hi StatusLine   guifg=#00FFFF  guibg=#0000FF
hi label        guifg=#EEC900
hi operator     guifg=#FFA500
hi clear Visual
hi DiffChange   guibg=#006400
hi DiffText     guibg=#6B8E23
hi DiffAdd      guibg=#6A5ACD
hi DiffDelete   guibg=#FF7F50
hi Folded       guibg=#4D4D4D
hi FoldColumn   guibg=#4D4D4D guifg=#ffffff
hi cIf0         guifg=#7F7F7F
