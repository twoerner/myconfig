" Vim color file
" Maintainer:   Thorsten Maerz <info@netztorte.de>
" Last Change:  2006 Dec 07
" grey on black
" optimized for TFT panels

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
"colorscheme default
let g:colors_name = "torte"

" hardcoded colors :
" GUI Comment : #80a0ff = Light blue

" GUI
highlight Normal     guifg=#CCCCCC       guibg=#000000
highlight Search     guifg=#000000        guibg=#FF0000
highlight Visual     guifg=#404040
highlight Cursor     guifg=#000000        guibg=#008000
highlight Special    guifg=#FFA500
highlight Comment    guifg=#80a0ff
highlight StatusLine guifg=#0000FF         guibg=#ffffff
highlight Statement  guifg=#FFFF00

" only for vim 5
if has("unix")
  if v:version<600
    highlight Normal  guifg=#CCCCCC      guibg=#000000
    highlight Search  guifg=#000000       guibg=#FF0000
    highlight Visual  guifg=#404040
    highlight Special guifg=#ADD8E6
    highlight Comment guifg=#ADD8E6
  endif
endif

