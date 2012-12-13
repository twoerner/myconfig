" Vim filetype detection file
" Language:     BitBake
" Author:       Ricardo Salveti <rsalveti@rsalveti.net>
" Copyright:    Copyright (C) 2008  Ricardo Salveti <rsalveti@rsalveti.net>
" Licence:      You may redistribute this under the same terms as Vim itself
"
" This sets up the syntax highlighting for BitBake files, like .bb, .bbclass and .inc

" .bb, .bbappend, and .bbclass
au BufNewFile,BufRead *.b{b,bappend,bclass}	setf bitbake

" .inc
au BufNewFile,BufRead *.inc 		setf bitbake

" .conf
au BufNewFile,BufRead *.conf
    \ if (match(expand("%:p:h"), "conf") > 0) |
    \     setf bitbake |
    \ endif
