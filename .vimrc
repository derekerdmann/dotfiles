set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

" Add optional or external plugins before enabling syntax and filetype
" detection in defaults.vim.

packadd! matchit
packadd! editexisting

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

    highlight default link cSpaceError ALEWarning
endfunction

augroup OverrideColors
    autocmd ColorScheme * call OverrideHighlights()
augroup END

colorscheme wallaby
let g:airline_theme='wombat'

" Highlight current line and column
set cursorline
set cursorcolumn

" color column after textwidth
set colorcolumn=+1

" Show line numbers
set number

" vim-gitgutter options
" Enable faster updates
set updatetime=100
highlight! link SignColumn LineNr
let g:gitgutter_set_sign_backgrounds = 1

" vim-airline options
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1

" Enable Doxygen highlighting in supported languages
let g:load_doxygen_syntax = 1

" Search highlighting, press space to clear
set hlsearch
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Lowercase searches are case-insensitive
set ignorecase
set smartcase

" File completion is case-insensitive
set wildignorecase

" Command-line completion shows matches in a popup menu
set wildmenu
if has('patch-8.2.4325')
    set wildoptions=pum
endif

" Indentation defaults
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

" Use the system clipboard for the default yank register
if has('win32') || has('osx')
    set clipboard=unnamed
else
    set clipboard=unnamedplus
endif

" Prefer user directory for swap instead of working dir
if has('win32')
    set directory=$USERPROFILE/vimtemp,.
else
    set directory=~/.vimtemp,.
endif

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

" Only load requested linters
let g:ale_linters_explicit = 1

let g:ale_lint_delay = 1000
let g:ale_lint_on_text_changed = 'normal'

let g:ale_warn_about_trailing_blank_lines = 1
let g:ale_warn_about_trailing_whitespace = 1

" Automatically lint after switching back to a window
function! LintOnFocusGained()
    if mode() == 'n'
        execute 'ALELint'
    endif
endfunction

augroup LintOnFocusGainedGroup
    autocmd FocusGained * call LintOnFocusGained()
augroup END

" Don't prefill a new bitbake file
let g:bb_create_on_empty=0
