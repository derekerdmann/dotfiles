set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

" If installed, add GNU LilyPond Vim plugins from distribution. Load before
" syntax and filetype detection is enabled by defaults.vim.
if executable('lilypond')
    let &runtimepath .= ',' . escape(trim(system('lilypond -e  "(display (ly:get-option ''datadir)) (exit)"')) . '/vim', '\,')
endif

unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

" Override Doxygen highlight colors to mostly look like regular comments. This
" group will be applied every time a color scheme is sourced.
augroup DoxygenOverride
    autocmd!
    autocmd ColorScheme * hi def link doxygenParamName Identifier
        \ | hi def link doxygenBody Comment
        \ | hi def link doxygenBrief Comment
        \ | hi def link doxygenParam String
        \ | hi def link doxygenSpecialHeading Comment
        \ | hi def link doxygenSpecialOnelineDesc Comment
        \ | hi def link doxygenSpecialTypeOnelineDesc Comment
augroup END

colorscheme wallaby
let g:airline_theme='wombat'

set autoindent

set tabstop=4
set shiftwidth=4
set expandtab

set number
set ignorecase
" color column after textwidth
set colorcolumn=+1

if has('win32') || has('osx')
set clipboard=unnamed
else
set clipboard=unnamedplus
endif

" Search highlighting, press space to clear
set hlsearch
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Prefer user directory for swap instead of working dir
if has('win32')
set directory=$USERPROFILE/vimtemp,.
else
set directory=~/.vimtemp,.
endif

" Highlight current line and column
set cursorline
set cursorcolumn

" Remove object files from file globs
set wildignore+=*.o

" Show a tree-style netrw listing
let g:netrw_home = '~/.netrw'
let g:netrw_liststyle = 3
let g:netrw_winsize = 30
let g:netrw_list_hide = netrw_gitignore#Hide()

" Toggle netrw with F7
nmap <F7> :Lexplore<CR>
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

highlight! link GitGutterAdd Identifier
highlight! link GitGutterChange Special
highlight! link GitGutterDelete Constant

" Enable omnicomplete
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" Enable Doxygen highlighting in supported languages
let g:load_doxygen_syntax = 1

" Only load requested linters
let g:ale_linters_explicit = 1

" Enable extended % matching
packadd! matchit
