so C:\Users\ShagraT\vimfiles\demelev\gitconflict.vim
map , :call GitResolve("ours")<CR>
map . :call GitResolve("theirs")<CR>
syn keyword Keyword ours theirs
au BufReadPost *.gitc call LoadUnresolvedList()
