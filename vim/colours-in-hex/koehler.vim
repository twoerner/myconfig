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
let g:colors_name = "koehler"
hi Normal         guifg=#ffffff  guibg=#000000
hi Scrollbar      guifg=#008B8B guibg=#00FFFF
hi Menu           guifg=#000000 guibg=#00FFFF
hi SpecialKey     guifg=#cc0000
hi NonText        guifg=#cc0000
hi Directory      guifg=#cc8000
hi ErrorMsg       guifg=#ffffff  guibg=#FF0000
hi Search         guifg=#ffffff  guibg=#FF0000
hi MoreMsg        guifg=#2E8B57
hi ModeMsg        guifg=#ffffff  guibg=#0000FF
hi LineNr         guifg=#FFFF00
hi Question       guifg=#008000
hi StatusLine     guifg=#0000FF guibg=#ffffff
hi StatusLineNC   guifg=#ffffff guibg=#0000FF
hi Title          guifg=#FF00FF
hi WarningMsg     guifg=#FF0000
hi Cursor         guifg=bg  guibg=#008000
hi Comment        guifg=#80a0ff
hi Constant       guifg=#ffa0a0
hi Special        guifg=#FFA500
hi Identifier     guifg=#40ffff
hi Statement      guifg=#ffff60
hi PreProc        guifg=#ff80ff
hi Type           guifg=#60ff60
hi Error          guifg=#FF0000  guibg=#000000
hi Todo           guifg=#0000FF  guibg=#FFFF00
hi CursorLine     guibg=#555555 
hi CursorColumn   guibg=#555555 
hi MatchParen     guibg=#0000FF
hi TabLine        guifg=#0000FF guibg=#ffffff
hi TabLineFill    guifg=#0000FF guibg=#ffffff
hi TabLineSel     guifg=#ffffff guibg=#0000FF
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
