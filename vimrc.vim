"vimrc

"--- vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"bundles
"Bundle 'Conque-Shell'
Bundle 'gmarik/vundle'
Bundle 'rosenfeld/conque-term'

filetype plugin indent on

"read buffered files on change
":set autoread

"--- folding
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax
" save folding state on exit and load on start
exec "au BufWinLeave * silent! mkview \"" expand("%") . ".vim\"!"
exec "au BufWinEnter * silent! loadview \"" expand("%") . ".vim\"!"

"--- python
"TODO: move this to ~/.vim/ftplugin/python.vim
"filetype indent plugin on
syntax on
"set shiftwidth=4
"set tabstop=4
"set softtabstop=4
set expandtab
set autoindent
set number
set colorcolumn=80

"--- navigation
:nnoremap <tab> :buffers<cr>:buffer<space>
"allow buffers to go into the backgroup without closing
:set hidden

":inoremap ( ()<Esc>i
":inoremap { {}<Esc>i
":inoremap [ []<Esc>i
":inoremap < <><Esc>i
":inoremap \" \""<Esc>i
":inoremap ' ''<Esc>i


"natural text
"":set textwidth=80
