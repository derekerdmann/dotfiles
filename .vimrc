syntax on

set enc=utf-8

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

autocmd FileType markdown set nofoldenable
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType haml setlocal shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
autocmd FileType cucumber setlocal shiftwidth=2 tabstop=2
autocmd FileType coffee setlocal shiftwidth=2 tabstop=2

au BufNewFile,BufRead *.prolog set filetype=prolog
au BufRead,BufNewFile *.als set filetype=alloy4
au BufRead,BufNewFile *.pml set filetype=promela
au BufRead,BufNewFile *.coffee set filetype=coffee

call pathogen#infect()
call pathogen#helptags()
