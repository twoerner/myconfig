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
let colors_name = "cslate"
:hi Normal guifg=#ffffff ctermfg=15 guibg=#262626 ctermbg=235
:hi Cursor guibg=#F0E68C ctermbg=222 guifg=#708090 ctermfg=66
:hi VertSplit guibg=#c2bfa5 ctermbg=250 guifg=#666666 ctermfg=241
:hi Folded guibg=#000000 ctermbg=0 guifg=#666666 ctermfg=241 
:hi FoldColumn guibg=#000000 ctermbg=0 guifg=#333333 ctermfg=236 
:hi IncSearch guifg=#008000 ctermfg=28 guibg=#000000 ctermbg=0 
:hi ModeMsg guifg=#DAA520 ctermfg=178 
:hi MoreMsg guifg=#2E8B57 ctermfg=29 
:hi NonText guifg=#4169E1 ctermfg=62 guibg=#262626 ctermbg=235 
:hi Question guifg=#00FF7F ctermfg=48 
:hi Search guibg=#CD853F ctermbg=173 guifg=#F5DEB3 ctermfg=223 
:hi SpecialKey guifg=#9ACD32 ctermfg=113 
:hi StatusLine guibg=#c2bfa5 ctermbg=250 guifg=#000000 ctermfg=0
:hi StatusLineNC guibg=#c2bfa5 ctermbg=250 guifg=#666666 ctermfg=241
:hi Title guifg=#FFD700 ctermfg=220
:hi Statement guifg=#6495ED ctermfg=69 
:hi Visual guifg=#F0E68C ctermfg=222 guibg=#6B8E23 ctermbg=64 
:hi WarningMsg guifg=#FA8072 ctermfg=209 
:hi String guifg=#87CEFA ctermfg=117 
:hi Comment guifg=#666666 ctermfg=241
:hi Constant guifg=#ffa0a0 ctermfg=217 
:hi Special guifg=#BDB76B ctermfg=143 
:hi Identifier guifg=#FA8072 ctermfg=209 
:hi Include guifg=#FF0000 ctermfg=9 
:hi PreProc guifg=#FF0000 ctermfg=9 guibg=#ffffff ctermbg=15 
:hi Operator guifg=#FF0000 ctermfg=9 
:hi Define guifg=#FFD700 ctermfg=220
:hi Type guifg=#6495ED ctermfg=69 
:hi Function guifg=#FFDEAD ctermfg=223 
:hi Structure guifg=#008000 ctermfg=28 
:hi LineNr guifg=#7F7F7F ctermfg=8 
:hi Ignore guifg=#666666 ctermfg=241 
:hi Todo guifg=#FF4500 ctermfg=202 guibg=#EEEE00 ctermbg=11
:hi ErrorMsg guifg=#ffffff ctermfg=15 guibg=#FF0000 ctermbg=9 
:hi Error guifg=#ffffff ctermfg=15 guibg=#FF0000 ctermbg=9 
:hi SpellErrors guifg=#ffffff ctermfg=15 guibg=#FF0000 ctermbg=9 
