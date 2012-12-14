" Vim color file
" Maintainer:   Yasuhiro Matsumoto <mattn@mail.goo.ne.jp>
" Last Change:  2001 May 25

" This look like normal text editor.
" This color scheme uses a light background.

" First remove all existing highlighting.
set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "cshine"

hi Normal guifg=#000000 ctermfg=0 guibg=#ffffff ctermbg=15

" Groups used in the 'highlight' and 'guicursor' options default value.
hi ErrorMsg guibg=#FF0000 ctermbg=9 guifg=#ffffff ctermfg=15
hi Visual guifg=#7F7F7F ctermfg=8 guibg=fg
hi DiffText guibg=#FF0000 ctermbg=9
hi Cursor guibg=#008000 ctermbg=28 guifg=#000000 ctermfg=0
hi lCursor guibg=#00FFFF ctermbg=14 guifg=#000000 ctermfg=0
hi Directory guifg=#FF0000 ctermfg=9
hi LineNr guifg=#FFFF00 ctermfg=11
hi MoreMsg guifg=#2E8B57 ctermfg=29
hi NonText guifg=#ADD8E6 ctermfg=152 guibg=#E5E5E5 ctermbg=7
hi Question guifg=#008000 ctermfg=28
hi Search guibg=#FFFF00 ctermbg=11 guifg=#000000 ctermfg=0
hi SpecialKey guifg=#0000FF ctermfg=21
hi Title guifg=#FF00FF ctermfg=13
hi WarningMsg guifg=#FF0000 ctermfg=9
hi WildMenu guibg=#FFFF00 ctermbg=11 guifg=#000000 ctermfg=0
hi Folded guibg=#AAAAAA ctermbg=248 guifg=#00008B ctermfg=18
hi FoldColumn guibg=#7F7F7F ctermbg=8 guifg=#00008B ctermfg=18
hi DiffAdd guibg=#00008B ctermbg=18
hi DiffChange guibg=#8B008B ctermbg=90
hi DiffDelete guifg=#0000FF ctermfg=21 guibg=#008B8B ctermbg=30

hi Comment guifg=#555555 ctermfg=240
hi SpecialChar guifg=#555555 ctermfg=240
hi StorageClass guifg=#FF0000 ctermfg=9
hi Number guifg=#C67171 ctermfg=167

" Groups for syntax highlighting
hi Constant guifg=#a07070 ctermfg=131 guibg=#CCCCCC ctermbg=252
hi Special guifg=#FF8C00 ctermfg=208 guibg=#CCCCCC ctermbg=252
if &t_Co > 8
  hi Statement guifg=#ffff60 ctermfg=227
endif
hi Ignore guifg=#E5E5E5 ctermfg=7

" vim: sw=2
