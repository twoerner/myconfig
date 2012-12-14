" Vim color file
" Maintainer:   Bram Moolenaar <Bram@vim.org>
" Last Change:  2006 Apr 15

" This color scheme uses a light grey background.

" First remove all existing highlighting.
set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "morning"

hi Normal guifg=#000000 guibg=#E8E8E8

" Groups used in the 'highlight' and 'guicursor' options default value.
hi ErrorMsg guibg=#FF0000 guifg=#ffffff
hi Visual guibg=#CCCCCC
hi DiffText guibg=#FF0000
hi Cursor guibg=Green guifg=NONE
hi lCursor guibg=#00FFFF guifg=NONE
hi Directory guifg=#0000FF
hi LineNr guifg=#8B4726
hi MoreMsg guifg=#2E8B57
hi NonText guifg=#0000FF guibg=#CCCCCC
hi Question guifg=#2E8B57
hi Search guibg=#FFFF00 guifg=NONE
hi SpecialKey guifg=#0000FF
hi Title guifg=#FF00FF
hi WarningMsg guifg=#FF0000
hi WildMenu guibg=#FFFF00 guifg=#000000
hi Folded guibg=#AAAAAA guifg=#00008B
hi FoldColumn guibg=#7F7F7F guifg=#00008B
hi DiffAdd guibg=#ADD8E6
hi DiffChange guibg=#FFBBFF
hi DiffDelete guifg=#0000FF guibg=#E0FFFF
hi CursorLine guibg=#CCCCCC
hi CursorColumn guibg=#CCCCCC

" Colors for syntax highlighting
hi Constant guifg=#FF00FF guibg=#F2F2F2
hi Special guifg=#6A5ACD guibg=#F2F2F2
if &t_Co > 8
  hi Statement guifg=#8B4726
endif
hi Ignore guifg=#E5E5E5

" vim: sw=2
