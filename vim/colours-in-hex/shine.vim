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

let colors_name = "shine"

hi Normal guifg=#000000 guibg=#ffffff

" Groups used in the 'highlight' and 'guicursor' options default value.
hi ErrorMsg guibg=#FF0000 guifg=#ffffff
hi Visual guifg=#7F7F7F guibg=fg
hi DiffText guibg=#FF0000
hi Cursor guibg=#008000 guifg=#000000
hi lCursor guibg=#00FFFF guifg=#000000
hi Directory guifg=#FF0000
hi LineNr guifg=#FFFF00
hi MoreMsg guifg=#2E8B57
hi NonText guifg=#ADD8E6 guibg=#E5E5E5
hi Question guifg=#008000
hi Search guibg=#FFFF00 guifg=#000000
hi SpecialKey guifg=#0000FF
hi Title guifg=#FF00FF
hi WarningMsg guifg=#FF0000
hi WildMenu guibg=#FFFF00 guifg=#000000
hi Folded guibg=#AAAAAA guifg=#00008B
hi FoldColumn guibg=#7F7F7F guifg=#00008B
hi DiffAdd guibg=#00008B
hi DiffChange guibg=#8B008B
hi DiffDelete guifg=#0000FF guibg=#008B8B

hi Comment guifg=#555555
hi SpecialChar guifg=#555555
hi StorageClass guifg=#FF0000
hi Number guifg=#C67171

" Groups for syntax highlighting
hi Constant guifg=#a07070 guibg=#CCCCCC
hi Special guifg=#FF8C00 guibg=#CCCCCC
if &t_Co > 8
  hi Statement guifg=#ffff60
endif
hi Ignore guifg=#E5E5E5

" vim: sw=2
