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

let colors_name = "peachpuff"

hi Normal guibg=#FFDAB9 guifg=#000000

hi SpecialKey guifg=#0000FF
hi NonText guifg=#0000FF
hi Directory guifg=#0000FF
hi ErrorMsg guifg=#ffffff guibg=#FF0000
hi Search guibg=#EEC900
hi MoreMsg guifg=#2E8B57
hi LineNr guifg=Red3
hi Question guifg=#2E8B57
hi StatusLine guifg=#ffffff guibg=#000000
hi StatusLineNC guifg=#FFDAB9 guibg=#737373
hi VertSplit guifg=#ffffff guibg=#737373
hi Title guifg=#CD1076
hi Visual guifg=#CCCCCC guibg=fg
hi WarningMsg guifg=#FF0000
hi WildMenu guifg=#000000 guibg=#FFFF00
hi Folded guifg=#000000 guibg=#e3c1a5
hi FoldColumn guifg=#00008B guibg=#CCCCCC
hi DiffAdd guibg=#ffffff
hi DiffChange guibg=#edb5cd
hi DiffDelete guifg=#ADD8E6 guibg=#f6e8d0
hi DiffText guibg=#ff8060
hi Cursor guifg=bg guibg=fg
hi lCursor guifg=bg guibg=fg

" Colors for syntax highlighting
hi Comment guifg=#406090
hi Constant guifg=#c00058
hi Special guifg=#6A5ACD
hi Identifier guifg=#008B8B
hi Statement guifg=#8B4726
hi PreProc guifg=#CD00CD
hi Type guifg=#2E8B57
hi Ignore guifg=bg
hi Error guifg=#ffffff guibg=#FF0000
hi Todo guifg=#0000FF guibg=#FFFF00

