syntax on
colorscheme wallaby
let g:airline_theme='wombat'

set enc=utf-8

set autoindent
filetype indent plugin on

set tabstop=4
set shiftwidth=4
set expandtab

set number
set ignorecase
" color column after textwidth
set colorcolumn=+1

if has("win32") || has("osx")
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
"
" Disable vimdiff folding
set nofoldenable
let g:vim_markdown_folding_disabled=1

autocmd FileType markdown set nofoldenable
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'xml', 'cpp', 'c', 'json', 'diff', 'plantuml', 'bitbake', 'kotlin', 'swift',  'cmake', 'meson']

autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal shiftwidth=2 tabstop=2
autocmd FileType haml setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
autocmd FileType cucumber setlocal shiftwidth=2 tabstop=2

autocmd FileType tex set spell
autocmd FileType markdown set spell
autocmd FileType markdown setlocal shiftwidth=4 tabstop=4
autocmd FileType markdown set textwidth=80

autocmd FileType gitcommit set textwidth=72
autocmd FileType gitcommit let g:nerdtree_tabs_open_on_gui_startup=0

autocmd BufRead,BufNewFile *.prolog set filetype=prolog
autocmd BufRead,BufNewFile *.kml set filetype=xml
autocmd BufRead,BufNewFile *.xaml,*.resw,*.dui,*.man set filetype=xml
autocmd BufRead,BufNewFile *.gyp,*.gypi set filetype=conf
autocmd BufRead,BufNewFile *.inc set filetype=c

autocmd FileType text let g:nerdtree_tabs_open_on_gui_startup=0

" Remove object files from file globs
set wildignore+=*.o

let g:nerdtree_tabs_focus_on_files=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.git$', '-debug$', '-release$', '-asan$', '-tsan$', 'make\.out\.*', '\.apk$', '^build-*', '^build$']

" Don't open nerdtree
let g:nerdtree_tabs_open_on_gui_startup=0
autocmd FileType markdown let g:nerdtree_tabs_open_on_gui_startup=1

" Don't prefill a new bitbake file
let g:bb_create_on_empty=0

" Toggle nerdtree with F7
nmap <F7> :NERDTreeTabsToggle<CR>
" Toggle tagbar with F8
nmap <F8> :TagbarToggle<CR>

let g:ctrlp_working_path_mode = 'rw'
let g:ctrlp_show_hidden = 1
let g:ctrlp_user_command = ['.git', 'git -C %s ls-files -oc --exclude-standard']

" vim-airline options
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1

" vim-gitgutter options
" Enable faster updates
set updatetime=100
highlight! link SignColumn LineNr
let g:gitgutter_set_sign_backgrounds = 1
"highlight! GitGutterAdd ctermfg=192 cterm=none guifg=#cae982 guibg=#080808 gui=none
"highlight! GitGutterChange ctermfg=228 cterm=none guifg=#eae788 guibg=#080808 gui=none
"highlight! GitGutterDelete ctermfg=173 cterm=none guifg=#e5786d guibg=#080808 gui=none

highlight! link GitGutterAdd Identifier
highlight! link GitGutterChange Special
highlight! link GitGutterDelete Constant

" If installed, add GNU LilyPond Vim plugins from distribution
if executable('lilypond')
    filetype off
    let &runtimepath .= ',' . escape(trim(system('lilypond -e  "(display (ly:get-option ''datadir)) (exit)"')) . "/vim", '\,')
    filetype on
    syntax on
endif
