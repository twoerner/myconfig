" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:   Ron Aaron <ron@ronware.org>
" Last Change:  2003 May 02

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "murphy"

hi Normal       guibg=#000000        guifg=#90EE90
hi Comment      guifg=#FFA500
hi Constant     guifg=#ffffff
hi Identifier   guifg=#00ffff
hi Ignore       guifg=bg
hi PreProc      guifg=#F5DEB3
hi Search       guifg=#ffffff   guibg=#0000FF
hi Special      guifg=#FF00FF
hi Statement    guifg=#ffff00
hi Type         guifg=#7F7F7F
hi Error        guibg=#FF0000  guifg=#ffffff
hi Todo         guifg=#0000FF guibg=#FFFF00
" From the source:
hi Cursor       guifg=#DA70D6  guibg=fg
hi Directory    guifg=#00FFFF
hi ErrorMsg     guibg=#FF0000 guifg=#ffffff
hi LineNr       guifg=#FFFF00
hi MoreMsg      guifg=#2E8B57
hi NonText      guifg=#0000FF
hi Question     guifg=#00FFFF
hi SpecialKey   guifg=#00FFFF
hi StatusLine   guifg=#ffffff guibg=#00008B
hi StatusLineNC guifg=#ffffff guibg=#333333
hi Title        guifg=#FFC0CB
hi WarningMsg   guifg=#FF0000
hi Visual       guifg=#ffffff guibg=#006400
