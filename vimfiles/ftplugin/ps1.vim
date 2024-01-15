let b:ale_linters = [
    \ 'powershell',
    \ ]

let b:ale_fixers = [
    \ 'remove_trailing_lines',
    \ 'trim_whitespace',
    \ ]

if !executable('pwsh')
    let g:ale_powershell_powershell_executable = 'powershell.exe'
endif
