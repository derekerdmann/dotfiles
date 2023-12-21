" Set PDF viewer to Skim if installed, otherwise default app
if has('osx') && !empty(trim(system('mdfind -name "kMDItemFSName==Skim.app"')))
    noremap <buffer> <F6> :silent !open -a Skim.app "%<.pdf"<Return>
elseif has('osx')
    noremap <buffer> <F6> :silent !open "%<.pdf"<Return>
endif

" ALE formatting using python-ly
function! LyFormat(buffer) abort
    let commands = [
        \ 'indent',
        \ 'reformat',
        \ 'simplify-accidentals'
        \ ]

    let options = {
        \ 'indent-width': &shiftwidth,
        \ 'encoding': &fileencoding,
        \ }
    let variables = join(values(map(copy(options), '"-d ".v:key."=".v:val')))

    return {
        \ 'command': 'ly "' . join(commands, ';') . '" ' . variables
        \ }
endfunction

let g:ale_fixers = {
  \   'lilypond': [
  \       'LyFormat'
  \   ],
  \}

runtime! compiler/lilypond.vim

" Disable the distributed ftplugin
let b:did_ftplugin = 1
