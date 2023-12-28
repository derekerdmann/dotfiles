syn match ExtraWhitespace /\s\+$\| \+\ze\t/ containedin=ALL
highlight link ExtraWhitespace ALEWarning
