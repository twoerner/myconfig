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
let g:colors_name = "cron"
hi Normal       guifg=#00FFFF ctermfg=14  guibg=#000000 ctermbg=0
hi NonText      guifg=#8B4726 ctermfg=94
hi comment      guifg=#008000 ctermfg=28
hi constant     guifg=#00FFFF ctermfg=14
hi identifier   guifg=#00FFFF ctermfg=14
hi statement    guifg=#ADD8E6 ctermfg=152
hi preproc      guifg=#EEA9B8 ctermfg=217
hi type         guifg=#2E8B57 ctermfg=29
hi special      guifg=#FFFF00 ctermfg=11
hi ErrorMsg     guifg=#000000 ctermfg=0 guibg=#FF0000 ctermbg=9
hi WarningMsg   guifg=#000000 ctermfg=0 guibg=#008000 ctermbg=28
hi Error        guibg=#FF0000 ctermbg=9
hi Todo         guifg=#000000 ctermfg=0 guibg=#FFA500 ctermbg=214
hi Cursor       guibg=#60a060 ctermbg=71 guifg=#00ff00 ctermfg=10
hi Search       guibg=#8470FF ctermbg=99
hi IncSearch    guibg=#4682B4 ctermbg=67
hi LineNr       guifg=#555555 ctermfg=240
hi title        guifg=#555555 ctermfg=240
hi StatusLineNC guifg=#ADD8E6 ctermfg=152 guibg=#00008B ctermbg=18
hi StatusLine   guifg=#00FFFF ctermfg=14  guibg=#0000FF ctermbg=21
hi label        guifg=#EEC900 ctermfg=220
hi operator     guifg=#FFA500 ctermfg=214
hi clear Visual
hi DiffChange   guibg=#006400 ctermbg=22
hi DiffText     guibg=#6B8E23 ctermbg=64
hi DiffAdd      guibg=#6A5ACD ctermbg=62
hi DiffDelete   guibg=#FF7F50 ctermbg=209
hi Folded       guibg=#4D4D4D ctermbg=239
hi FoldColumn   guibg=#4D4D4D ctermbg=239 guifg=#ffffff ctermfg=15
hi cIf0         guifg=#7F7F7F ctermfg=8
