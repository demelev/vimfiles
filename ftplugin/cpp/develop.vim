if exists('+colorcolumn')
    highlight ColorColumn ctermbg=235 guibg=#252525
    "highlight CursorLine ctermbg=235 guibg=#2a2b25
    "highlight CursorColumn ctermbg=235 guibg=#2a2b25
    let &colorcolumn=+1
    "join(range(81,400),",")
    "set cc=+1
else
    autocmd BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
end
"test two
