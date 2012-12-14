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

let colors_name = "cdarkblue"

hi Normal       guifg=#c0c0c0 ctermfg=250 guibg=#000040 ctermbg=17
hi ErrorMsg     guifg=#ffffff ctermfg=15 guibg=#287eff ctermbg=33
hi Visual       guifg=#8080ff ctermfg=105 guibg=fg
hi VisualNOS    guifg=#8080ff ctermfg=105 guibg=fg
hi Todo         guifg=#d14a14 ctermfg=166 guibg=#1248d1 ctermbg=26
hi Search       guifg=#90fff0 ctermfg=123 guibg=#2050d0 ctermbg=26
hi IncSearch    guifg=#b0ffff ctermfg=159 guibg=#2050d0 ctermbg=26

hi SpecialKey   guifg=#00FFFF ctermfg=14
hi Directory    guifg=#00FFFF ctermfg=14
hi Title        guifg=#FF00FF ctermfg=13
hi WarningMsg   guifg=#FF0000 ctermfg=9
hi WildMenu     guifg=#FFFF00 ctermfg=11 guibg=#000000 ctermbg=0
hi ModeMsg      guifg=#22cce2 ctermfg=44
hi Question     guifg=#008000 ctermfg=28
hi NonText      guifg=#0030ff ctermfg=27

hi StatusLine   guifg=#0000FF ctermfg=21 guibg=#555555 ctermbg=240
hi StatusLineNC guifg=#000000 ctermfg=0 guibg=#555555 ctermbg=240
hi VertSplit    guifg=#000000 ctermfg=0 guibg=#555555 ctermbg=240

hi Folded       guifg=#808080 ctermfg=244 guibg=#000040 ctermbg=17
hi FoldColumn   guifg=#808080 ctermfg=244 guibg=#000040 ctermbg=17
hi LineNr       guifg=#90f020 ctermfg=118

hi DiffAdd      guibg=#00008B ctermbg=18
hi DiffChange   guibg=#8B008B ctermbg=90
hi DiffDelete   guifg=#0000FF ctermfg=21 guibg=#008B8B ctermbg=30
hi DiffText     guibg=#FF0000 ctermbg=9

hi Cursor       guifg=#000000 ctermfg=0 guibg=#FFFF00 ctermbg=11
hi lCursor      guifg=#000000 ctermfg=0 guibg=#FFFFFF ctermbg=15


hi Comment      guifg=#80a0ff ctermfg=111
hi Constant     guifg=#ffa0a0 ctermfg=217
hi Special      guifg=#FFA500 ctermfg=214
hi Identifier   guifg=#40ffff ctermfg=87
hi Statement    guifg=#ffff60 ctermfg=227
hi PreProc      guifg=#ff80ff ctermfg=213
hi type         guifg=#60ff60 ctermfg=83
hi Ignore       guifg=bg

" suggested by tigmoid, 2008 Jul 18
hi Pmenu guifg=#c0c0c0 ctermfg=250 guibg=#404080 ctermbg=60
hi PmenuSel guifg=#c0c0c0 ctermfg=250 guibg=#2050d0 ctermbg=26
hi PmenuSbar guifg=#0000FF ctermfg=21 guibg=#555555 ctermbg=240
hi PmenuThumb guifg=#c0c0c0 ctermfg=250
