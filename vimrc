set nocp
filet off
if has('win64') || has('win32')
	set rtp+=~/vimfiles/bundle/Vundle.vim
	call vundle#begin('$HOME/vimfiles/bundle')
else
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()
endif
Plugin 'VundleVim/Vundle.vim'
"Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-latex/vim-latex'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'benmills/vimux'
"Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()

filet plugin indent on
set dir=~/.vim/swap// nobk hi=255 tpm=32767 nu ts=4 sw=4 noet nofixeol bs=indent,eol,start mouse=a
set popt=paper:letter,left:0.75in,right:0.75in,top:0.75in,bottom:0.75in,number:y bg=dark
colo delek
syn on


" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a single file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set gp=grep\ -nH

let g:Tex_MultipleCompileFormats='dvi,pdf'

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
let g:Tex_SmartKeyQuote=0

" OPTIONAL: Disabling vim-latex's placeholders.
let g:Imap_UsePlaceHolders=0

let g:ycm_always_populate_location_list=1
let g:ycm_auto_hover=''
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_clangd_binary_path='/usr/bin/clangd'
let g:ycm_global_ycm_extra_conf='~/.vim/ycmrc.py'

nn <unique> <Bslash><Tab> :YcmCompleter Format<CR>
nn <unique> <Bslash>f :YcmCompleter FixIt<CR>
nn <unique> <Bslash>g :YcmCompleter GoTo<CR>
nn <unique> <Bslash>r :YcmForceCompileAndDiagnostics<CR>

nm <unique> <Bslash>h <Plug>(YCMHover)
