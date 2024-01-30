let b:ale_linters = ['ktlint']

let b:ale_fixers = [
    \ 'ktlint',
    \ 'remove_trailing_lines',
    \ 'trim_whitespace',
    \ ]

" Formatting from stdin mixes ktlint log output with the resulting file
" https://github.com/pinterest/ktlint/issues/2246
let g:ale_kotlin_ktlint_options = '--log-level=none'
