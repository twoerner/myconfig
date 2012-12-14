"%% SiSU Vim color file
" Slate Maintainer: Ralph Amissah <ralph@amissah.com>
" (originally looked at desert Hans Fugal <hans@fugal.net> http://hans.fugal.net/vim/colors/desert.vim (2003/05/06)
:set background=dark
:highlight clear
if version > 580
 hi clear
 if exists("syntax_on")
 syntax reset
 endif
endif
let colors_name = "slate"
:hi Normal guifg=#ffffff guibg=#262626
:hi Cursor guibg=#F0E68C guifg=#708090
:hi VertSplit guibg=#c2bfa5 guifg=#666666
:hi Folded guibg=#000000 guifg=#666666 
:hi FoldColumn guibg=#000000 guifg=#333333 
:hi IncSearch guifg=#008000 guibg=#000000 
:hi ModeMsg guifg=#DAA520 
:hi MoreMsg guifg=#2E8B57 
:hi NonText guifg=#4169E1 guibg=#262626 
:hi Question guifg=#00FF7F 
:hi Search guibg=#CD853F guifg=#F5DEB3 
:hi SpecialKey guifg=#9ACD32 
:hi StatusLine guibg=#c2bfa5 guifg=#000000
:hi StatusLineNC guibg=#c2bfa5 guifg=#666666
:hi Title guifg=#FFD700
:hi Statement guifg=#6495ED 
:hi Visual guifg=#F0E68C guibg=#6B8E23 
:hi WarningMsg guifg=#FA8072 
:hi String guifg=#87CEFA 
:hi Comment guifg=#666666
:hi Constant guifg=#ffa0a0 
:hi Special guifg=#BDB76B 
:hi Identifier guifg=#FA8072 
:hi Include guifg=#FF0000 
:hi PreProc guifg=#FF0000 guibg=#ffffff 
:hi Operator guifg=#FF0000 
:hi Define guifg=#FFD700
:hi Type guifg=#6495ED 
:hi Function guifg=#FFDEAD 
:hi Structure guifg=#008000 
:hi LineNr guifg=#7F7F7F 
:hi Ignore guifg=#666666 
:hi Todo guifg=#FF4500 guibg=#EEEE00
:hi ErrorMsg guifg=#ffffff guibg=#FF0000 
:hi Error guifg=#ffffff guibg=#FF0000 
:hi SpellErrors guifg=#ffffff guibg=#FF0000 
