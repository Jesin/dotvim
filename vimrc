filetype off

if has('win32') || has('win64')
	set rtp+=~/vimfiles/bundle/vundle
	call vundle#rc('$HOME/vimfiles/bundle')
else
	set rtp+=~/.vim/bundle/vundle
	call vundle#rc()
endif
Bundle 'gmarik/vundle'

Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-fugitive'
Bundle 'git://vim-latex.git.sourceforge.net/gitroot/vim-latex/vim-latex'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'benmills/vimux'
Bundle 'scrooloose/syntastic'
Bundle 'Valloric/YouCompleteMe'

set nobackup
set tabpagemax=32767
set printoptions=paper:letter,left:0.8in,right:0.8in,top:1in,bottom:1in

filetype plugin indent on
syntax on
colorscheme delek
set number

set tabstop=4
set shiftwidth=4
set noexpandtab
set mouse=a


" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a single file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

let g:Tex_MultipleCompileFormats='dvi,pdf'

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
let g:Tex_SmartKeyQuote=0

" OPTIONAL: Disabling vim-latex's placeholders.
let g:Imap_UsePlaceHolders=0
