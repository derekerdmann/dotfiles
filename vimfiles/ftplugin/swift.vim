let b:ale_linters = [
    \ 'sourcekitlsp',
    \ 'swiftlint',
    \ ]

let b:ale_fixers = [
    \ 'remove_trailing_lines',
    \ 'trim_whitespace',
    \ ]

" Always evaluate syntax highlighting from the start of the file
syntax sync fromstart
