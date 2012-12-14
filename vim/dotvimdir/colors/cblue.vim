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
let g:colors_name = "cblue"
hi Normal       guifg=#FFFF00 ctermfg=11   guibg=#00008B ctermbg=18
hi NonText      guifg=#FF00FF ctermfg=13
hi comment      guifg=#808080 ctermfg=244
hi constant     guifg=#00FFFF ctermfg=14
hi identifier   guifg=#808080 ctermfg=244
hi statement    guifg=#ffffff ctermfg=15
hi preproc      guifg=#008000 ctermfg=28
hi type         guifg=#FFA500 ctermfg=214
hi special      guifg=#FF00FF ctermfg=13
hi Underlined   guifg=#00FFFF ctermfg=14
hi label        guifg=#FFFF00 ctermfg=11
hi operator     guifg=#FFA500 ctermfg=214

hi ErrorMsg     guifg=#FFA500 ctermfg=214   guibg=#00008B ctermbg=18
hi WarningMsg   guifg=#00FFFF ctermfg=14   guibg=#00008B ctermbg=18
hi ModeMsg      guifg=#FFFF00 ctermfg=11
hi MoreMsg      guifg=#FFFF00 ctermfg=11
hi Error        guifg=#FF0000 ctermfg=9   guibg=#00008B ctermbg=18

hi Todo         guifg=#000000 ctermfg=0   guibg=#FFA500 ctermbg=214
hi Cursor       guifg=#000000 ctermfg=0   guibg=#ffffff ctermbg=15
hi Search       guifg=#000000 ctermfg=0   guibg=#FFA500 ctermbg=214
hi IncSearch    guifg=#000000 ctermfg=0   guibg=#FFFF00 ctermbg=11
hi LineNr       guifg=#00FFFF ctermfg=14
hi title        guifg=#ffffff ctermfg=15

hi StatusLineNC guifg=#000000 ctermfg=0   guibg=#0000FF ctermbg=21
hi StatusLine   guifg=#00FFFF ctermfg=14   guibg=#0000FF ctermbg=21
hi VertSplit    guifg=#0000FF ctermfg=21   guibg=#0000FF ctermbg=21

hi Visual       guifg=#000000 ctermfg=0   guibg=#008B8B ctermbg=30

hi DiffChange   guibg=#006400 ctermbg=22   guifg=#000000 ctermfg=0
hi DiffText     guibg=#6B8E23 ctermbg=64   guifg=#000000 ctermfg=0
hi DiffAdd      guibg=#6A5ACD ctermbg=62   guifg=#000000 ctermfg=0
hi DiffDelete   guibg=#FF7F50 ctermbg=209   guifg=#000000 ctermfg=0

hi Folded       guibg=#FFA500 ctermbg=214   guifg=#000000 ctermfg=0
hi FoldColumn   guibg=#4D4D4D ctermbg=239   guifg=#000000 ctermfg=0
hi cIf0         guifg=#808080 ctermfg=244

