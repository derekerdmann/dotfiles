set spell

if has('osx') && !empty(trim(system('mdfind -name kMDItemFSName==Skim.app')))
    let g:vimtex_view_method = 'skim'
    let g:vimtex_view_skim_sync = 1
    let g:vimtex_view_skim_no_select = 1
endif

let b:ale_linters = [
    \ 'lacheck',
    \ 'chktex',
    \ 'texlab',
    \ ]

let b:ale_fixers = [
    \ 'latexindent',
    \ 'trim_whitespace',
    \ 'remove_trailing_lines',
    \ ]
