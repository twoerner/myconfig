" Vim color file
" Maintainer:   Bram Moolenaar <Bram@vim.org>
" Last Change:  2006 Apr 14

" This color scheme uses a dark grey background.

" First remove all existing highlighting.
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "evening"

hi Normal guifg=#ffffff guibg=#333333

" Groups used in the 'highlight' and 'guicursor' options default value.
hi ErrorMsg guibg=#FF0000 guifg=#ffffff
hi Visual guibg=#999999
hi DiffText guibg=#FF0000
hi Cursor guibg=#008000 guifg=#000000
hi lCursor guibg=#00FFFF guifg=#000000
hi Directory guifg=#00FFFF
hi LineNr guifg=#FFFF00
hi MoreMsg guifg=#2E8B57
hi NonText guifg=#ADD8E6 guibg=#4D4D4D
hi Question guifg=#008000
hi Search guibg=#FFFF00 guifg=#000000
hi SpecialKey guifg=#00FFFF
hi Title guifg=#FF00FF
hi WarningMsg guifg=#FF0000
hi WildMenu guibg=#FFFF00 guifg=#000000
hi Folded guibg=#D3D3D3 guifg=#00008B
hi FoldColumn guibg=#7F7F7F guifg=#00008B
hi DiffAdd guibg=#00008B
hi DiffChange guibg=#8B008B
hi DiffDelete guifg=#0000FF guibg=#008B8B
hi CursorColumn guibg=#666666
hi CursorLine guibg=#666666

" Groups for syntax highlighting
hi Constant guifg=#ffa0a0 guibg=#0D0D0D
hi Special guifg=#FFA500 guibg=#0D0D0D
if &t_Co > 8
  hi Statement guifg=#ffff60
endif
hi Ignore guifg=#333333

" vim: sw=2
