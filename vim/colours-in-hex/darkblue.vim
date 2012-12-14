" Vim color file
" Maintainer:   Bohdan Vlasyuk <bohdan@vstu.edu.ua>
" Last Change:  2008 Jul 18

" darkblue -- for those who prefer dark background
" [note: looks bit uglier with come terminal palettes,
" but is fine on default linux console palette.]

set bg=dark
hi clear
if exists("syntax_on")
        syntax reset
endif

let colors_name = "darkblue"

hi Normal       guifg=#c0c0c0 guibg=#000040
hi ErrorMsg     guifg=#ffffff guibg=#287eff
hi Visual       guifg=#8080ff guibg=fg
hi VisualNOS    guifg=#8080ff guibg=fg
hi Todo         guifg=#d14a14 guibg=#1248d1
hi Search       guifg=#90fff0 guibg=#2050d0
hi IncSearch    guifg=#b0ffff guibg=#2050d0

hi SpecialKey   guifg=#00FFFF
hi Directory    guifg=#00FFFF
hi Title        guifg=#FF00FF
hi WarningMsg   guifg=#FF0000
hi WildMenu     guifg=#FFFF00 guibg=#000000
hi ModeMsg      guifg=#22cce2
hi Question     guifg=#008000
hi NonText      guifg=#0030ff

hi StatusLine   guifg=#0000FF guibg=#555555
hi StatusLineNC guifg=#000000 guibg=#555555
hi VertSplit    guifg=#000000 guibg=#555555

hi Folded       guifg=#808080 guibg=#000040
hi FoldColumn   guifg=#808080 guibg=#000040
hi LineNr       guifg=#90f020

hi DiffAdd      guibg=#00008B
hi DiffChange   guibg=#8B008B
hi DiffDelete   guifg=#0000FF guibg=#008B8B
hi DiffText     guibg=#FF0000

hi Cursor       guifg=#000000 guibg=#FFFF00
hi lCursor      guifg=#000000 guibg=#FFFFFF


hi Comment      guifg=#80a0ff
hi Constant     guifg=#ffa0a0
hi Special      guifg=#FFA500
hi Identifier   guifg=#40ffff
hi Statement    guifg=#ffff60
hi PreProc      guifg=#ff80ff
hi type         guifg=#60ff60
hi Ignore       guifg=bg

" suggested by tigmoid, 2008 Jul 18
hi Pmenu guifg=#c0c0c0 guibg=#404080
hi PmenuSel guifg=#c0c0c0 guibg=#2050d0
hi PmenuSbar guifg=#0000FF guibg=#555555
hi PmenuThumb guifg=#c0c0c0
