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

let colors_name = "cmorning"

hi Normal guifg=#000000 ctermfg=0 guibg=#E8E8E8 ctermbg=7

" Groups used in the 'highlight' and 'guicursor' options default value.
hi ErrorMsg guibg=#FF0000 ctermbg=9 guifg=#ffffff ctermfg=15
hi Visual guibg=#CCCCCC ctermbg=252
hi DiffText guibg=#FF0000 ctermbg=9
hi Cursor guibg=Green guifg=NONE
hi lCursor guibg=#00FFFF ctermbg=14 guifg=NONE
hi Directory guifg=#0000FF ctermfg=21
hi LineNr guifg=#8B4726 ctermfg=94
hi MoreMsg guifg=#2E8B57 ctermfg=29
hi NonText guifg=#0000FF ctermfg=21 guibg=#CCCCCC ctermbg=252
hi Question guifg=#2E8B57 ctermfg=29
hi Search guibg=#FFFF00 ctermbg=11 guifg=NONE
hi SpecialKey guifg=#0000FF ctermfg=21
hi Title guifg=#FF00FF ctermfg=13
hi WarningMsg guifg=#FF0000 ctermfg=9
hi WildMenu guibg=#FFFF00 ctermbg=11 guifg=#000000 ctermfg=0
hi Folded guibg=#AAAAAA ctermbg=248 guifg=#00008B ctermfg=18
hi FoldColumn guibg=#7F7F7F ctermbg=8 guifg=#00008B ctermfg=18
hi DiffAdd guibg=#ADD8E6 ctermbg=152
hi DiffChange guibg=#FFBBFF ctermbg=219
hi DiffDelete guifg=#0000FF ctermfg=21 guibg=#E0FFFF ctermbg=195
hi CursorLine guibg=#CCCCCC ctermbg=252
hi CursorColumn guibg=#CCCCCC ctermbg=252

" Colors for syntax highlighting
hi Constant guifg=#FF00FF ctermfg=13 guibg=#F2F2F2 ctermbg=7
hi Special guifg=#6A5ACD ctermfg=62 guibg=#F2F2F2 ctermbg=7
if &t_Co > 8
  hi Statement guifg=#8B4726 ctermfg=94
endif
hi Ignore guifg=#E5E5E5 ctermfg=7

" vim: sw=2
