let g:vim_markdown_folding_disabled=1

set nofoldenable

set spell
setlocal shiftwidth=4 tabstop=4
set textwidth=80

let g:markdown_fenced_languages = [
    \ 'html',
    \ 'python',
    \ 'bash=sh',
    \ 'xml',
    \ 'cpp',
    \ 'c',
    \ 'json',
    \ 'diff',
    \ 'plantuml',
    \ 'bitbake',
    \ 'kotlin',
    \ 'swift',
    \ 'cmake',
    \ 'meson'
    \ ]

let g:nerdtree_tabs_open_on_gui_startup=1
