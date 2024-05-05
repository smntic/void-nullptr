augroup IndentBlankline
    autocmd!
    autocmd BufWritePre,Syntax * lua require('ibl').refresh()
augroup END
