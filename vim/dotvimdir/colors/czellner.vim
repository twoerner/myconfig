" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:   Ron Aaron <ron@ronware.org>
" Last Change:  2003 May 02

set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "czellner"

hi Comment guifg=#FF0000 ctermfg=9
hi Normal guifg=#000000 ctermfg=0 guibg=#ffffff ctermbg=15
hi Constant guifg=#FF00FF ctermfg=13
hi Special guifg=#FF00FF ctermfg=13
hi Identifier guifg=#0000FF ctermfg=21
hi Statement guifg=#8B4726 ctermfg=94
hi PreProc guifg=#800080 ctermfg=90
hi Type guifg=#0000FF ctermfg=21
hi Visual guifg=#000000 ctermfg=0 guibg=#FFFF00 ctermbg=11
hi Search guifg=#000000 ctermfg=0 guibg=#00FFFF ctermbg=14
hi Tag guifg=#006400 ctermfg=22
hi Error guibg=#FF0000 ctermbg=9 guifg=#ffffff ctermfg=15
hi Todo guifg=#0000FF ctermfg=21 guibg=#FFFF00 ctermbg=11
hi  StatusLine guifg=#FFFF00 ctermfg=11 guibg=#555555 ctermbg=240
hi! link MoreMsg Comment
hi! link ErrorMsg Visual
hi! link WarningMsg ErrorMsg
hi! link Question Comment
hi link String  Constant
hi link Character   Constant
hi link Number  Constant
hi link Boolean Constant
hi link Float       Number
hi link Function    Identifier
hi link Conditional Statement
hi link Repeat  Statement
hi link Label       Statement
hi link Operator    Statement
hi link Keyword Statement
hi link Exception   Statement
hi link Include PreProc
hi link Define  PreProc
hi link Macro       PreProc
hi link PreCondit   PreProc
hi link StorageClass    Type
hi link Structure   Type
hi link Typedef Type
hi link SpecialChar Special
hi link Delimiter   Special
hi link SpecialComment Special
hi link Debug       Special
