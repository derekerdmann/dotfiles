set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

" Add optional or external plugins before enabling syntax and filetype
" detection in defaults.vim.

packadd! matchit

" If installed, add GNU LilyPond Vim plugins from distribution
if executable('lilypond')
    let &runtimepath .= ',' . escape(trim(system('lilypond -e  "(display (ly:get-option ''datadir)) (exit)"')) . '/vim', '\,')
endif

unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

function! OverrideHighlights() abort
    " Override Doxygen highlight colors to mostly look like regular comments
    highlight default link doxygenParamName Identifier
    highlight default link doxygenBody Comment
    highlight default link doxygenBrief Comment
    highlight default link doxygenParam String
    highlight default link doxygenSpecialHeading Comment
    highlight default link doxygenSpecialOnelineDesc Comment
    highlight default link doxygenSpecialTypeOnelineDesc Comment

    " Highlight ALE error signs to match the error block
    highlight default link ALEErrorSign SpellBad

    " Use the error color in ALE virtual text
    highlight default link ALEVirtualTextError WarningMsg

    " Use the saturated yellow from the wombat airline theme's insert mode
    " instead of SpellCaps for ALE warnings
    highlight ALEWarning guifg=#141413 guibg=#fde76e ctermfg=232 ctermbg=203
    highlight ALEVirtualTextWarning ctermfg=203 guifg=#fde76e
    highlight default link ALEWarningSign ALEWarning

    " Set add/change/delete sign colors
    highlight GitGutterAdd guifg=#95e454 ctermfg=113
    highlight GitGutterChange guifg=#fde76e ctermfg=3
    highlight GitGutterDelete guifg=#e5786d ctermfg=1
endfunction

augroup OverrideColors
    autocmd ColorScheme * call OverrideHighlights()
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


" Enable omnicomplete
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" Enable Doxygen highlighting in supported languages
let g:load_doxygen_syntax = 1

" Only load requested linters
let g:ale_linters_explicit = 1
