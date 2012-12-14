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
let g:colors_name = "cmurphy"

hi Normal       guibg=#000000 ctermbg=0        guifg=#90EE90 ctermfg=120
hi Comment      guifg=#FFA500 ctermfg=214
hi Constant     guifg=#ffffff ctermfg=15
hi Identifier   guifg=#00ffff ctermfg=14
hi Ignore       guifg=bg
hi PreProc      guifg=#F5DEB3 ctermfg=223
hi Search       guifg=#ffffff ctermfg=15   guibg=#0000FF ctermbg=21
hi Special      guifg=#FF00FF ctermfg=13
hi Statement    guifg=#ffff00 ctermfg=11
hi Type         guifg=#7F7F7F ctermfg=8
hi Error        guibg=#FF0000 ctermbg=9  guifg=#ffffff ctermfg=15
hi Todo         guifg=#0000FF ctermfg=21 guibg=#FFFF00 ctermbg=11
" From the source:
hi Cursor       guifg=#DA70D6 ctermfg=170  guibg=fg
hi Directory    guifg=#00FFFF ctermfg=14
hi ErrorMsg     guibg=#FF0000 ctermbg=9 guifg=#ffffff ctermfg=15
hi LineNr       guifg=#FFFF00 ctermfg=11
hi MoreMsg      guifg=#2E8B57 ctermfg=29
hi NonText      guifg=#0000FF ctermfg=21
hi Question     guifg=#00FFFF ctermfg=14
hi SpecialKey   guifg=#00FFFF ctermfg=14
hi StatusLine   guifg=#ffffff ctermfg=15 guibg=#00008B ctermbg=18
hi StatusLineNC guifg=#ffffff ctermfg=15 guibg=#333333 ctermbg=236
hi Title        guifg=#FFC0CB ctermfg=218
hi WarningMsg   guifg=#FF0000 ctermfg=9
hi Visual       guifg=#ffffff ctermfg=15 guibg=#006400 ctermbg=22
