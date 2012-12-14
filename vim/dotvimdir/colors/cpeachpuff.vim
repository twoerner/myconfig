" Vim color file
" Maintainer: David Ne\v{c}as (Yeti) <yeti@physics.muni.cz>
" Last Change: 2003-04-23
" URL: http://trific.ath.cx/Ftp/vim/colors/peachpuff.vim

" This color scheme uses a peachpuff background (what you've expected when it's
" called peachpuff?).
"
" Note: Only GUI colors differ from default, on terminal it's just `light'.

" First remove all existing highlighting.
set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "cpeachpuff"

hi Normal guibg=#FFDAB9 ctermbg=223 guifg=#000000 ctermfg=0

hi SpecialKey guifg=#0000FF ctermfg=21
hi NonText guifg=#0000FF ctermfg=21
hi Directory guifg=#0000FF ctermfg=21
hi ErrorMsg guifg=#ffffff ctermfg=15 guibg=#FF0000 ctermbg=9
hi Search guibg=#EEC900 ctermbg=220
hi MoreMsg guifg=#2E8B57 ctermfg=29
hi LineNr guifg=Red3
hi Question guifg=#2E8B57 ctermfg=29
hi StatusLine guifg=#ffffff ctermfg=15 guibg=#000000 ctermbg=0
hi StatusLineNC guifg=#FFDAB9 ctermfg=223 guibg=#737373 ctermbg=243
hi VertSplit guifg=#ffffff ctermfg=15 guibg=#737373 ctermbg=243
hi Title guifg=#CD1076 ctermfg=162
hi Visual guifg=#CCCCCC ctermfg=252 guibg=fg
hi WarningMsg guifg=#FF0000 ctermfg=9
hi WildMenu guifg=#000000 ctermfg=0 guibg=#FFFF00 ctermbg=11
hi Folded guifg=#000000 ctermfg=0 guibg=#e3c1a5 ctermbg=181
hi FoldColumn guifg=#00008B ctermfg=18 guibg=#CCCCCC ctermbg=252
hi DiffAdd guibg=#ffffff ctermbg=15
hi DiffChange guibg=#edb5cd ctermbg=218
hi DiffDelete guifg=#ADD8E6 ctermfg=152 guibg=#f6e8d0 ctermbg=224
hi DiffText guibg=#ff8060 ctermbg=209
hi Cursor guifg=bg guibg=fg
hi lCursor guifg=bg guibg=fg

" Colors for syntax highlighting
hi Comment guifg=#406090 ctermfg=60
hi Constant guifg=#c00058 ctermfg=125
hi Special guifg=#6A5ACD ctermfg=62
hi Identifier guifg=#008B8B ctermfg=30
hi Statement guifg=#8B4726 ctermfg=94
hi PreProc guifg=#CD00CD ctermfg=5
hi Type guifg=#2E8B57 ctermfg=29
hi Ignore guifg=bg
hi Error guifg=#ffffff ctermfg=15 guibg=#FF0000 ctermbg=9
hi Todo guifg=#0000FF ctermfg=21 guibg=#FFFF00 ctermbg=11

