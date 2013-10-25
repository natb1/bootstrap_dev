"vimrc
set nocompatible

"syntax on
"open buffer list in normal mode using <tab>
:nnoremap <tab> :buffers<cr>:buffer<space>
"allow buffers to go into the backgroup without closing
:set hidden
"read buffered files on change
":set autoread
":set  t_Co=256

"--- vundle
"filetype on
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"bundles
Bundle 'gmarik/vundle'
Bundle 'rosenfeld/conque-term'
Bundle 'indentpython'

filetype plugin indent on

"--- python
autocmd FileType python setlocal shiftwidth=4
autocmd FileType python setlocal tabstop=4
autocmd FileType python setlocal softtabstop=4
autocmd FileType python setlocal expandtab
autocmd FileType python setlocal number
autocmd FileType python setlocal colorcolumn=80
"handled by indentpython
"set autoindent

"--- javascript
autocmd FileType python setlocal shiftwidth=4
autocmd FileType python setlocal tabstop=4
autocmd FileType python setlocal softtabstop=4
autocmd FileType python setlocal expandtab
autocmd FileType python setlocal number
autocmd FileType python setlocal colorcolumn=80
autocmd FileType python setlocal autoindent

"--- xml
"let g:xml_syntax_folding=1
"au FileType xml setlocal foldmethod=syntax
" save folding state on exit and load on start

":inoremap ( ()<Esc>i
":inoremap { {}<Esc>i
":inoremap [ []<Esc>i
":inoremap < <><Esc>i
":inoremap \" \""<Esc>i
":inoremap ' ''<Esc>i

"--- text
"":set textwidth=80
