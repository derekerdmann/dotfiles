let b:ale_linters = [
    \ 'sca2d',
    \ ]

let b:ale_fixers = [
    \ 'remove_trailing_lines',
    \ 'trim_whitespace',
    \ ]

" Show trailing whitepace and spaces before a tab
" https://vim.fandom.com/wiki/Highlight_unwanted_spaces
augroup OpenSCADWhitespace
    autocmd Syntax * syn match SpellBad /\s\+$\| \+\ze\t/
augroup END
