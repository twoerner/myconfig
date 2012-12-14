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

let colors_name = "cevening"

hi Normal guifg=#ffffff ctermfg=15 guibg=#333333 ctermbg=236

" Groups used in the 'highlight' and 'guicursor' options default value.
hi ErrorMsg guibg=#FF0000 ctermbg=9 guifg=#ffffff ctermfg=15
hi Visual guibg=#999999 ctermbg=246
hi DiffText guibg=#FF0000 ctermbg=9
hi Cursor guibg=#008000 ctermbg=28 guifg=#000000 ctermfg=0
hi lCursor guibg=#00FFFF ctermbg=14 guifg=#000000 ctermfg=0
hi Directory guifg=#00FFFF ctermfg=14
hi LineNr guifg=#FFFF00 ctermfg=11
hi MoreMsg guifg=#2E8B57 ctermfg=29
hi NonText guifg=#ADD8E6 ctermfg=152 guibg=#4D4D4D ctermbg=239
hi Question guifg=#008000 ctermfg=28
hi Search guibg=#FFFF00 ctermbg=11 guifg=#000000 ctermfg=0
hi SpecialKey guifg=#00FFFF ctermfg=14
hi Title guifg=#FF00FF ctermfg=13
hi WarningMsg guifg=#FF0000 ctermfg=9
hi WildMenu guibg=#FFFF00 ctermbg=11 guifg=#000000 ctermfg=0
hi Folded guibg=#D3D3D3 ctermbg=252 guifg=#00008B ctermfg=18
hi FoldColumn guibg=#7F7F7F ctermbg=8 guifg=#00008B ctermfg=18
hi DiffAdd guibg=#00008B ctermbg=18
hi DiffChange guibg=#8B008B ctermbg=90
hi DiffDelete guifg=#0000FF ctermfg=21 guibg=#008B8B ctermbg=30
hi CursorColumn guibg=#666666 ctermbg=241
hi CursorLine guibg=#666666 ctermbg=241

" Groups for syntax highlighting
hi Constant guifg=#ffa0a0 ctermfg=217 guibg=#0D0D0D ctermbg=233
hi Special guifg=#FFA500 ctermfg=214 guibg=#0D0D0D ctermbg=233
if &t_Co > 8
  hi Statement guifg=#ffff60 ctermfg=227
endif
hi Ignore guifg=#333333 ctermfg=236

" vim: sw=2
