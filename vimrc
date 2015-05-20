set nocompatible
filetype off
if has('win32') || has('win64')
	set rtp+=~/vimfiles/bundle/Vundle.vim
	call vundle#begin('$HOME/vimfiles/bundle')
else
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()
endif
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.code.sf.net/p/vim-latex/vim-latex'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'benmills/vimux'
"Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()

filetype plugin indent on
syntax on
colorscheme delek

set popt=paper:letter,left:0.8in,right:0.8in,top:1in,bottom:1in
set nobk tpm=32767 nu ts=4 sw=4 noet bs=indent,eol,start mouse=a

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a single file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set gp=grep\ -nH\ $*

let g:Tex_MultipleCompileFormats='dvi,pdf'

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
let g:Tex_SmartKeyQuote=0

" OPTIONAL: Disabling vim-latex's placeholders.
let g:Imap_UsePlaceHolders=0

let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_global_ycm_extra_conf='~/.vim/ycm_extra_conf.py'
