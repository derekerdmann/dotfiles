let b:ale_linters = [
    \ 'ruff',
    \ 'pylint',
    \ 'pylsp',
    \ ]

let b:ale_fixers = [
    \ 'remove_trailing_lines',
    \ 'trim_whitespace',
    \ 'ruff',
    \ 'ruff_format',
    \ ]

let b:python_auto_pipenv = 1
let b:python_auto_poetry = 1
let g:ale_python_auto_virtualenv = 1
