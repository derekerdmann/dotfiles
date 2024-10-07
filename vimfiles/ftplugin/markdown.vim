let g:vim_markdown_folding_disabled=1

setlocal nofoldenable

setlocal spell
setlocal shiftwidth=4 tabstop=4
setlocal textwidth=80

let g:markdown_fenced_languages = [
    \ 'html',
    \ 'python',
    \ 'bash=sh',
    \ 'xml',
    \ 'cpp',
    \ 'c',
    \ 'json',
    \ 'diff',
    \ 'plantuml',
    \ 'bitbake',
    \ 'kotlin',
    \ 'swift',
    \ 'cmake',
    \ 'meson',
    \ 'vim',
    \ 'dockerfile',
    \ 'yaml',
    \ 'toml',
    \ ]

let b:ale_linters = [
    \ 'vale',
    \ ]

let b:ale_fixers = [
    \ 'remove_trailing_lines',
    \ 'trim_whitespace',
    \]

" Show trailing whitepace and spaces before a tab
" https://vim.fandom.com/wiki/Highlight_unwanted_spaces
augroup MarkdownWhitespace
    autocmd Syntax * syn match SpellBad /\s\+$\| \+\ze\t/
augroup END
