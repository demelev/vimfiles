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
        source .vim/ide.session
    endif
" Загружаем ранее сохраненную сессию <--
cd "".g:projectDir
" Загружаем настройки данного проекта
so .vim/project_settings.vim

"Устанавливает правила синтаксиса, специфичные для данного проекта.
" -->
    function! SetProjectSyntax()
        if getfsize(".vim/syntax.vim") >= 0
            source .vim/syntax.vim
        endif
    endfunction
" <--
call SetProjectSyntax()

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

function! UpdateThirdTags( name )
    for third in g:thirdTags
        if third[0] == a:name
            let command = ' silent !ctags -R -f ' . a:name . ' --c\#-kinds=cimnp --fields=+ianmzS --extra=+fq '
            for i in third[1]
                let command .= ' "'.i.'"'
            endfor
            exec command
        endif
    endfor
endfunction
"call UpdateTagsForChangedFiles()

autocmd BufWritePost *.cs call UpdateTags()
autocmd BufReadPost *.cs :call SetProjectSyntax()| call SetProjectColors()

set tags+=project_tags

