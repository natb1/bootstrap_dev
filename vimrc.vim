"vimrc
set nocompatible

"--- global settings
"open buffer list in normal mode using <tab>
:nnoremap <tab> :buffers<cr>:buffer<space>
"leader mapping for write command
:nnoremap <leader>w :write<cr>
"allow buffers to go into the backgroup without closing
:set hidden
":set  t_Co=256

"--- vundle
"filetype on
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"bundles
Bundle 'gmarik/vundle'
Bundle 'indentpython'

filetype plugin indent on

"--- python
autocmd FileType python setlocal shiftwidth=4
autocmd FileType python setlocal tabstop=4
autocmd FileType python setlocal softtabstop=4
autocmd FileType python setlocal expandtab
autocmd FileType python setlocal number
autocmd FileType python setlocal colorcolumn=80
autocmd FileType python setlocal foldmethod=indent
autocmd FileType python nnoremap <buffer> <leader>b Oimport pdb; pdb.set_trace()
"handled by indentpython
"set autoindent

"--- javascript
autocmd FileType javascript setlocal shiftwidth=4
autocmd FileType javascript setlocal tabstop=4
autocmd FileType javascript setlocal softtabstop=4
autocmd FileType javascript setlocal expandtab
autocmd FileType javascript setlocal number
autocmd FileType javascript setlocal colorcolumn=80
autocmd FileType javascript setlocal autoindent

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
