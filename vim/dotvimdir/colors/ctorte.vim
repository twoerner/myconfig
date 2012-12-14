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
let g:colors_name = "ctorte"

" hardcoded colors :
" GUI Comment : #80a0ff = Light blue

" GUI
highlight Normal     guifg=#CCCCCC ctermfg=252       guibg=#000000 ctermbg=0
highlight Search     guifg=#000000 ctermfg=0        guibg=#FF0000 ctermbg=9
highlight Visual     guifg=#404040 ctermfg=238
highlight Cursor     guifg=#000000 ctermfg=0        guibg=#008000 ctermbg=28
highlight Special    guifg=#FFA500 ctermfg=214
highlight Comment    guifg=#80a0ff ctermfg=111
highlight StatusLine guifg=#0000FF ctermfg=21         guibg=#ffffff ctermbg=15
highlight Statement  guifg=#FFFF00 ctermfg=11

" only for vim 5
if has("unix")
  if v:version<600
    highlight Normal  guifg=#CCCCCC ctermfg=252      guibg=#000000 ctermbg=0
    highlight Search  guifg=#000000 ctermfg=0       guibg=#FF0000 ctermbg=9
    highlight Visual  guifg=#404040 ctermfg=238
    highlight Special guifg=#ADD8E6 ctermfg=152
    highlight Comment guifg=#ADD8E6 ctermfg=152
  endif
endif

