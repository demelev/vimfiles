" Конфигурационный файл Vim IDE

" Запрещаем восстановление настроек из сессии,
" т. к. тогда при изменении ~/.vimrc даже после
" перезагрузки IDE новые настройки не будут
" вступать в силу.
set sessionoptions-=options

" Добавляем пути к библиотекам
"set path+=/usr/include/gtk-2.0
"set path+=./netlog

" При закрытии Vim'а сохраняем информацию о текущей сессии
au VimLeave * :mksession! .vim/ide.session

let g:projectDir = getcwd()

" Загружаем ранее сохраненную сессию -->
if getfsize(".vim/ide.session") >= 0
    silent source .vim/ide.session
endif

" Загружаем ранее сохраненную сессию <--
silent cd "".g:projectDir

" Добавляем путь в runtimepath
let addRuntime = "set runtimepath+=".g:projectDir."/.vim"
exec addRuntime

" Загружаем настройки данного проекта
if getfsize(".vim/project_settings.vim") >= 0
    source .vim/project_settings.vim
endif

"Устанавливает правила синтаксиса, специфичные для данного проекта.
" -->
    function! SetProjectSyntax()
        if getfsize(".vim/syntax.vim") >= 0
            source .vim/syntax.vim
        endif
    endfunction
" <--
call SetProjectSyntax()

if getfsize(".vim\project_snippets.snippets") >= 0
    ExtractSnipFile(".vim", "project_snippets.snippets");
endif
"Устанавливаем цветовую схему для этого проекта
" -->
    function! SetProjectColors()
        if getfsize(".vim/colorsceme.vim") >= 0
            source .vim/colorsceme.vim
        endif
    endfunction
" <--
call SetProjectColors()

" working with ctasg around tags
"

function! UpdateTags()
  let fullpath = expand("%:p")
  exec 'cd '.g:projectDir
  let cwd = g:projectDir.'\'
  let tagfilename = cwd . "/project_tags"
  let f = substitute(fullpath, escape(cwd, '.\'), "", "")

  execute "Dispatch! .vim\\UpdateTags.bat ".escape(f,'.\')." \"".f."\" ".v:servername
endfunction
command! UpdateProjectHighlight call UpdateTags()

function! UpdateMainTags()
    let command = "silent !ctags ".g:ctagsOptions

    for i in g:excludeDirs
        let command .= ' --exclude="'.i.'"'
    endfor

    for i in g:projectTagsList
        let command .= ' "'.i.'"'
    endfor
    exec command
    UpdateTypesFileOnly
endfunction
command! UpdateMainTags call UpdateMainTags()

function! UpdateThirdTags( name )
    for third in g:thirdTags
        if third[0] == a:name
            let command = ' silent !ctags -R -f ' . a:name . ' --c++-kinds=+p --fields=+iaS --extra=+q '
            for i in third[1]
                let command .= ' "'.i.'"'
            endfor
            exec command
        endif
    endfor
endfunction

autocmd BufWritePost *.cpp,*.h,*.c,*.hpp call UpdateTags()
autocmd BufReadPost * :call SetProjectSyntax()| call SetProjectColors()

map <a-o> :A<CR>
map <a-i> :AV<CR>
map <a-m> :CtrlPBufTag<cr>
map <a-b> :CtrlPBuffer<cr>

" connect tags lists
let g:TagHighlightSettings['UserLibraries'] = []
let s:libraries = g:TagHighlightSettings['UserLibraries']

for thirdLibrary in g:thirdTags 
    call add(s:libraries, thirdLibrary[0].'.taghl')
    if getfsize(thirdLibrary[0]) >= 0
        exec 'set tags+='.thirdLibrary[0]
    endif
endfor

function! UpdateLibrariesHL()
    for tl in g:thirdTags
        let g:TagHighlightSettings['TagFileName'] = tl[0]
        let g:TagHighlightSettings['TypesFileNameForce'] = tl[0].".taghl"
        UpdateTypesFileOnly
    endfor

    let g:TagHighlightSettings['TagFileName'] = "project_tags"
    let g:TagHighlightSettings['TypesFileNameForce'] = "types_c.taghl"
endfunction

" -->
function! UpdateLibrariesTags()
    for tl in g:thirdTags
        call UpdateThirdTags(tl[0])
    endfor

    call UpdateLibrariesHL()
endfunction
command! UpdateLibrariesTags call UpdateLibrariesTags()

"-->
function! UpdateProjectHL()

endfunction
"let g:TagHighlightSettings['TagFileName'] = "project_tags"
"let g:TagHighlightSettings['TypesFileNameForce'] = "types_c.taghl"
"set tags+=project_tags
ReadTypes
