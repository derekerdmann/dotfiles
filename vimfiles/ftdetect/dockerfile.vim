" filetype.vim with patch 8.2.3905 detects Dockerfile.* but still doesn't
" recognize Dockerfile-*
augroup DetectDockerfile
    autocmd BufRead,BufNewFile Dockerfile* setfiletype dockerfile
augroup END
