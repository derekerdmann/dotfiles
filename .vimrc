syntax on

set enc=utf-8

set autoindent
filetype indent plugin on

set tabstop=4
set shiftwidth=4
set expandtab

set number
set ignorecase
" color gutter after 80 chars
set cc=81

if has("win32")
set clipboard=unnamed
else
set clipboard=unnamedplus
endif

set backspace=indent,eol,start

" Search highlighting, press space to clear
set hlsearch
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Use global file for swap instead of working dir
if has("win32")
set dir=$USERPROFILE/vimtemp,.
else
set dir=~/.vimtemp,.
endif

" Highlight current line and column
set cursorline
set cursorcolumn

autocmd FileType markdown set nofoldenable
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'xml', 'cpp', 'c', 'json', 'diff']

autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal shiftwidth=2 tabstop=2
autocmd FileType haml setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
autocmd FileType cucumber setlocal shiftwidth=2 tabstop=2
autocmd FileType coffee setlocal shiftwidth=2 tabstop=2

autocmd FileType tex set spell
autocmd FileType markdown set spell
autocmd FileType markdown setlocal shiftwidth=4 tabstop=4

autocmd FileType gitcommit set textwidth=72
autocmd FileType gitcommit let g:nerdtree_tabs_open_on_gui_startup=0

autocmd BufRead,BufNewFile *.prolog set filetype=prolog
autocmd BufRead,BufNewFile *.als set filetype=alloy4
autocmd BufRead,BufNewFile *.pml set filetype=promela
autocmd BufRead,BufNewFile *.coffee set filetype=coffee
autocmd BufRead,BufNewFile *.kml set filetype=xml
autocmd BufRead,BufNewFile *.frag,*.vert,*.fp,*.vp,*.glsl set filetype=glsl 
autocmd BufRead,BufNewFile *.xaml,*.resw,*.dui,*.man set filetype=xml

autocmd FileType text let g:nerdtree_tabs_open_on_gui_startup=0

" Remove object files from file globs
set wildignore+=*.o

let g:nerdtree_tabs_focus_on_files=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeIgnore = ['-debug$', '-release$', '-asan$', 'make\.out\.*', '\.apk$']

" Don't open nerdtree
let g:nerdtree_tabs_open_on_gui_startup=0
autocmd FileType markdown let g:nerdtree_tabs_open_on_gui_startup=1
" Don't open nerdtree for piped stdin
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | let g:nerdtree_tabs_open_on_gui_startup=0 | endif

" Toggle nerdtree with F7
nmap <F7> :NERDTreeTabsToggle<CR>
" Toggle tagbar with F8
nmap <F8> :TagbarToggle<CR>

execute pathogen#infect()
