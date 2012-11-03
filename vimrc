runtime bundle/pathogen/autoload/pathogen.vim

set printoptions=paper:letter,left:0.8in,right:0.8in,top:1in,bottom:1in

syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set mouse=a

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*


" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" OPTIONAL: Disabling vim-latex's placeholders.
let g:Imap_UsePlaceHolders = 0

call pathogen#infect()
call pathogen#helptags()
