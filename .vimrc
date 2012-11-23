syntax on

set enc=utf-8

set autoindent
filetype indent plugin on

set tabstop=4
set shiftwidth=4
set expandtab

autocmd FileType markdown set nofoldenable
autocmd FileType ruby, eruby, haml, yaml, cucumber, coffee, javascript
    \ setlocal shiftwidth=2 tabstop=2

autocmd FileType gitcommit set textwidth=72

autocmd BufRead,BufNewFile *.prolog set filetype=prolog
autocmd BufRead,BufNewFile *.als set filetype=alloy4
autocmd BufRead,BufNewFile *.pml set filetype=promela
autocmd BufRead,BufNewFile *.coffee set filetype=coffee
autocmd BufRead,BufNewFile *.kml set filetype=xml
autocmd BufRead,BufNewFile *.frag,*.vert,*.fp,*.vp,*.glsl set filetype=glsl 

autocmd FileType html,eruby let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,eruby source ~/vimfiles/bundle/closetag/plugin/closetag.vim
