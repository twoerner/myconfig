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
let g:colors_name = "celflord"
hi Normal       guifg=#00FFFF ctermfg=14          guibg=#000000 ctermbg=0
hi Comment  guifg=#80a0ff ctermfg=111
hi Constant guifg=#FF00FF ctermfg=13
hi Special  guifg=#FF0000 ctermfg=9
hi Identifier guifg=#40ffff ctermfg=87
hi Statement guifg=#aa4444 ctermfg=131
hi PreProc  guifg=#ff80ff ctermfg=213
hi Type guifg=#60ff60 ctermfg=83
hi Function guifg=#ffffff ctermfg=15
hi Repeat   guifg=#ffffff ctermfg=15
hi Operator             guifg=#FF0000 ctermfg=9
hi Ignore               guifg=bg
hi Error    guibg=#FF0000 ctermbg=9 guifg=#ffffff ctermfg=15
hi Todo guifg=#0000FF ctermfg=21 guibg=#FFFF00 ctermbg=11

" Common groups that link to default highlighting.
" You can specify other highlighting easily.
hi link String  Constant
hi link Character   Constant
hi link Number  Constant
hi link Boolean Constant
hi link Float       Number
hi link Conditional Repeat
hi link Label       Statement
hi link Keyword Statement
hi link Exception   Statement
hi link Include PreProc
hi link Define  PreProc
hi link Macro       PreProc
hi link PreCondit   PreProc
hi link StorageClass    Type
hi link Structure   Type
hi link Typedef Type
hi link Tag     Special
hi link SpecialChar Special
hi link Delimiter   Special
hi link SpecialComment Special
hi link Debug       Special
