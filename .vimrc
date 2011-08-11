syntax on

set enc=utf-8

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

autocmd FileType markdown set nofoldenable
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
au BufNewFile,BufRead *.prolog set filetype=prolog
