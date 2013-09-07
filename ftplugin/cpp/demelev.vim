" Общий конфигурационный файл для всех файлов,
" которые имеют какое-либо отношение к программированию.

" Отключаем перенос строк
setlocal nowrap

" Уровень сокрытия по умолчанию для вновь открытых файлов
setlocal foldlevelstart=1
" Метод фолдинга - по синтаксису
setlocal foldmethod=syntax

" Включаем отображение номеров строк
setlocal relativenumber

" Учитывать регистр букв при поиске
setlocal noignorecase

" Включить подсветку невидимых символов
setlocal list
" Настройка подсветки невидимых символов
setlocal listchars=tab:·\ ,trail:·

" setting up omniCpp 
" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_SelectFirstItem  = 2
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest ",preview

" add tags
set tags+=$VIM/vimfiles/tags/cpp_std
