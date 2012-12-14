" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:   Ron Aaron <ron@ronware.org>
" Last Change:  2003 May 02

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "pablo"

highlight Comment    guifg=#808080
highlight Constant   guifg=#00ffff
highlight Identifier guifg=#00c0c0
highlight Statement  guifg=#c0c000
highlight PreProc    guifg=#00ff00
highlight Type       guifg=#00c000
highlight Special    guifg=#0000ff
highlight Error      guibg=#ff0000
highlight Todo       guifg=#000080 guibg=#c0c000
highlight Directory  guifg=#00c000
highlight StatusLine guifg=#ffff00 guibg=#0000ff
highlight Normal     guifg=#ffffff guibg=#000000
highlight Search     guibg=#c0c000
