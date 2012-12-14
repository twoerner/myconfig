" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:   Ron Aaron <ron@ronware.org>
" Last Change:  2006 Dec 10

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "ckoehler"
hi Normal         guifg=#ffffff ctermfg=15  guibg=#000000 ctermbg=0
hi Scrollbar      guifg=#008B8B ctermfg=30 guibg=#00FFFF ctermbg=14
hi Menu           guifg=#000000 ctermfg=0 guibg=#00FFFF ctermbg=14
hi SpecialKey     guifg=#cc0000 ctermfg=1
hi NonText        guifg=#cc0000 ctermfg=1
hi Directory      guifg=#cc8000 ctermfg=172
hi ErrorMsg       guifg=#ffffff ctermfg=15  guibg=#FF0000 ctermbg=9
hi Search         guifg=#ffffff ctermfg=15  guibg=#FF0000 ctermbg=9
hi MoreMsg        guifg=#2E8B57 ctermfg=29
hi ModeMsg        guifg=#ffffff ctermfg=15  guibg=#0000FF ctermbg=21
hi LineNr         guifg=#FFFF00 ctermfg=11
hi Question       guifg=#008000 ctermfg=28
hi StatusLine     guifg=#0000FF ctermfg=21 guibg=#ffffff ctermbg=15
hi StatusLineNC   guifg=#ffffff ctermfg=15 guibg=#0000FF ctermbg=21
hi Title          guifg=#FF00FF ctermfg=13
hi WarningMsg     guifg=#FF0000 ctermfg=9
hi Cursor         guifg=bg  guibg=#008000 ctermbg=28
hi Comment        guifg=#80a0ff ctermfg=111
hi Constant       guifg=#ffa0a0 ctermfg=217
hi Special        guifg=#FFA500 ctermfg=214
hi Identifier     guifg=#40ffff ctermfg=87
hi Statement      guifg=#ffff60 ctermfg=227
hi PreProc        guifg=#ff80ff ctermfg=213
hi Type           guifg=#60ff60 ctermfg=83
hi Error          guifg=#FF0000 ctermfg=9  guibg=#000000 ctermbg=0
hi Todo           guifg=#0000FF ctermfg=21  guibg=#FFFF00 ctermbg=11
hi CursorLine     guibg=#555555 ctermbg=240 
hi CursorColumn   guibg=#555555 ctermbg=240 
hi MatchParen     guibg=#0000FF ctermbg=21
hi TabLine        guifg=#0000FF ctermfg=21 guibg=#ffffff ctermbg=15
hi TabLineFill    guifg=#0000FF ctermfg=21 guibg=#ffffff ctermbg=15
hi TabLineSel     guifg=#ffffff ctermfg=15 guibg=#0000FF ctermbg=21
hi link IncSearch       Visual
hi link String          Constant
hi link Character       Constant
hi link Number          Constant
hi link Boolean         Constant
hi link Float           Number
hi link Function        Identifier
hi link Conditional     Statement
hi link Repeat          Statement
hi link Label           Statement
hi link Operator        Statement
hi link Keyword         Statement
hi link Exception       Statement
hi link Include         PreProc
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link Delimiter       Special
hi link SpecialComment  Special
hi link Debug           Special
