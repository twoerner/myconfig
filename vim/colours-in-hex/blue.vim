" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Steven Vertigan <steven@vertigan.wattle.id.au>
" Last Change:	2006 Sep 23
" Revision #5: Switch main text from white to yellow for easier contrast,
" fixed some problems with terminal backgrounds.

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "blue"
hi Normal       guifg=#FFFF00   guibg=#00008B
hi NonText      guifg=#FF00FF
hi comment      guifg=#808080
hi constant     guifg=#00FFFF
hi identifier   guifg=#808080
hi statement    guifg=#ffffff
hi preproc      guifg=#008000
hi type         guifg=#FFA500
hi special      guifg=#FF00FF
hi Underlined   guifg=#00FFFF
hi label        guifg=#FFFF00
hi operator     guifg=#FFA500

hi ErrorMsg     guifg=#FFA500   guibg=#00008B
hi WarningMsg   guifg=#00FFFF   guibg=#00008B
hi ModeMsg      guifg=#FFFF00
hi MoreMsg      guifg=#FFFF00
hi Error        guifg=#FF0000   guibg=#00008B

hi Todo         guifg=#000000   guibg=#FFA500
hi Cursor       guifg=#000000   guibg=#ffffff
hi Search       guifg=#000000   guibg=#FFA500
hi IncSearch    guifg=#000000   guibg=#FFFF00
hi LineNr       guifg=#00FFFF
hi title        guifg=#ffffff

hi StatusLineNC guifg=#000000   guibg=#0000FF
hi StatusLine   guifg=#00FFFF   guibg=#0000FF
hi VertSplit    guifg=#0000FF   guibg=#0000FF

hi Visual       guifg=#000000   guibg=#008B8B

hi DiffChange   guibg=#006400   guifg=#000000
hi DiffText     guibg=#6B8E23   guifg=#000000
hi DiffAdd      guibg=#6A5ACD   guifg=#000000
hi DiffDelete   guibg=#FF7F50   guifg=#000000

hi Folded       guibg=#FFA500   guifg=#000000
hi FoldColumn   guibg=#4D4D4D   guifg=#000000
hi cIf0         guifg=#808080

