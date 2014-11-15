"vimrc
set nocompatible

"--- global settings
:set number
:set colorcolumn=80
:set cursorcolumn
:set ruler
:syntax on
:set t_Co=256
:set bg=dark
:set mouse=a
:set hidden "allow buffers to go into the backgroup without closing
:set backspace=indent,eol,start "makes the mac delete key work as expected
:nnoremap <tab> :buffers<cr>:buffer<space>
:nnoremap <leader>w :write<cr>
:nnoremap <leader>p :VimuxPromptCommand<cr>
:nnoremap <leader>r :VimuxRunLastCommand<cr>
:map <ScrollWheelUp> <C-Y>
:map <ScrollWheelDown> <C-E>

"--- vundle
"filetype on
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"bundles
Bundle 'gmarik/vundle'
Bundle 'indentpython'
Bundle 'vimux'
Bundle 'christoomey/vim-tmux-navigator'

filetype plugin indent on

"--- python
autocmd FileType python setlocal shiftwidth=4
autocmd FileType python setlocal tabstop=4
autocmd FileType python setlocal softtabstop=4
autocmd FileType python setlocal expandtab
autocmd FileType python setlocal foldmethod=indent
autocmd FileType python nnoremap <buffer> <leader>b Oimport pdb; pdb.set_trace():write<cr>
"handled by indentpython
"set autoindent

"--- html
autocmd FileType html setlocal shiftwidth=2
autocmd FileType html setlocal tabstop=2
autocmd FileType html setlocal softtabstop=2
autocmd FileType html setlocal expandtab
autocmd FileType html setlocal autoindent

"--- javascript
autocmd FileType javascript setlocal shiftwidth=2
autocmd FileType javascript setlocal tabstop=2
autocmd FileType javascript setlocal softtabstop=2
autocmd FileType javascript setlocal expandtab
autocmd FileType javascript setlocal autoindent

"--- markdown

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
