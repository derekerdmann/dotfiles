syntax on

set enc=utf-8

set autoindent
filetype indent plugin on

set tabstop=4
set shiftwidth=4
set expandtab

set backspace=indent,eol,start

autocmd FileType markdown set nofoldenable
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal shiftwidth=2 tabstop=2
autocmd FileType haml setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
autocmd FileType cucumber setlocal shiftwidth=2 tabstop=2
autocmd FileType coffee setlocal shiftwidth=2 tabstop=2

autocmd FileType tex set spell
autocmd FileType markdown set spell

autocmd FileType gitcommit set textwidth=72

autocmd BufRead,BufNewFile *.prolog set filetype=prolog
autocmd BufRead,BufNewFile *.als set filetype=alloy4
autocmd BufRead,BufNewFile *.pml set filetype=promela
autocmd BufRead,BufNewFile *.coffee set filetype=coffee
autocmd BufRead,BufNewFile *.kml set filetype=xml
autocmd BufRead,BufNewFile *.frag,*.vert,*.fp,*.vp,*.glsl set filetype=glsl 
