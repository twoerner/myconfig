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
let g:colors_name = "cpablo"

highlight Comment    guifg=#808080 ctermfg=244
highlight Constant   guifg=#00ffff ctermfg=14
highlight Identifier guifg=#00c0c0 ctermfg=6
highlight Statement  guifg=#c0c000 ctermfg=3
highlight PreProc    guifg=#00ff00 ctermfg=10
highlight Type       guifg=#00c000 ctermfg=2
highlight Special    guifg=#0000ff ctermfg=21
highlight Error      guibg=#ff0000 ctermbg=9
highlight Todo       guifg=#000080 ctermfg=18 guibg=#c0c000 ctermbg=3
highlight Directory  guifg=#00c000 ctermfg=2
highlight StatusLine guifg=#ffff00 ctermfg=11 guibg=#0000ff ctermbg=21
highlight Normal     guifg=#ffffff ctermfg=15 guibg=#000000 ctermbg=0
highlight Search     guibg=#c0c000 ctermbg=3
