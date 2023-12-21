set spell

if has('osx') && !empty(trim(system('mdfind -name kMDItemFSName==Skim.app')))
    let g:vimtex_view_method = 'skim'
    let g:vimtex_view_skim_sync = 1
    let g:vimtex_view_skim_no_select = 1
endif
