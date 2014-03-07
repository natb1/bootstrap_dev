"vimrc
set nocompatible

"--- global settings
"open buffer list in normal mode using <tab>
:nnoremap <tab> :buffers<cr>:buffer<space>
"leader mapping for write command
:nnoremap <leader>w :write<cr>
"vimux leader shortcus
:nnoremap <leader>p :VimuxPromptCommand<cr>
:nnoremap <leader>r :VimuxRunLastCommand<cr>
"reload and go to end of file (follow)
:nnoremap <leader>f :edit<cr>G
"allow buffers to go into the backgroup without closing
:set hidden
:set cursorcolumn
":set  t_Co=256
:syntax on

"--- vundle
"filetype on
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"bundles
Bundle 'gmarik/vundle'
Bundle 'indentpython'
Bundle 'vimux'

filetype plugin indent on

"--- python
autocmd FileType python setlocal shiftwidth=4
autocmd FileType python setlocal tabstop=4
autocmd FileType python setlocal softtabstop=4
autocmd FileType python setlocal expandtab
autocmd FileType python setlocal number
autocmd FileType python setlocal colorcolumn=80
autocmd FileType python setlocal foldmethod=indent
autocmd FileType python nnoremap <buffer> <leader>b Oimport pdb; pdb.set_trace():write<cr>
"handled by indentpython
"set autoindent

"--- html
autocmd FileType html setlocal shiftwidth=2
autocmd FileType html setlocal tabstop=2
autocmd FileType html setlocal softtabstop=2
autocmd FileType html setlocal expandtab
autocmd FileType html setlocal number
autocmd FileType html setlocal colorcolumn=80
autocmd FileType html setlocal autoindent

"--- javascript
autocmd FileType javascript setlocal shiftwidth=2
autocmd FileType javascript setlocal tabstop=2
autocmd FileType javascript setlocal softtabstop=2
autocmd FileType javascript setlocal expandtab
autocmd FileType javascript setlocal number
autocmd FileType javascript setlocal colorcolumn=80
autocmd FileType javascript setlocal autoindent

"--- markdown
autocmd FileType markdown setlocal colorcolumn=80
autocmd FileType markdown setlocal number

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
