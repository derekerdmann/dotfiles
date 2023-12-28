let b:ale_linters = [
    \ 'vimls',
    \ ]

" Only use vint inside the home directory when not part of a Git submodule.
" This should exclude most third-party plugins.
if expand('%:p') =~# expand('~')
    let superproject = trim(system('git -C ' . expand('%:h') . ' rev-parse --show-superproject-working-tree'))
    if v:shell_error || empty(superproject)
        let b:ale_linters += ['vint']
    endif
endif

let b:ale_fixers = [
    \ 'remove_trailing_lines',
    \ 'trim_whitespace',
    \]
