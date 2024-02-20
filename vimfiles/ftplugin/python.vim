let b:ale_linters = [
    \ 'ruff',
    \ 'pylint',
    \ 'pylsp',
    \ 'mypy',
    \ ]

let b:ale_fixers = [
    \ 'remove_trailing_lines',
    \ 'trim_whitespace',
    \ 'ruff',
    \ 'ruff_format',
    \ ]

let g:ale_python_auto_pipenv = 1
let g:ale_python_auto_poetry = 1
let g:ale_python_auto_virtualenv = 1
let g:ale_python_pylint_change_directory = 0

let g:python_highlight_all = 1
