" Colorscheme created with ColorSchemeEditor v1.2.3
"Name: wip
"Maintainer: 
"Last Change: 2013 Sep 15
set background=dark
if version > 580
	highlight clear
	if exists("syntax_on")
		syntax reset
	endif
endif
let g:colors_name = "wip"

if v:version >= 700
	highlight CursorColumn guibg=#262626 gui=NONE
	highlight CursorLine gui=NONE guibg=#222222
	highlight Pmenu guifg=#828282 guibg=#191919 gui=underline
	highlight PmenuSel guifg=#aaff00 guibg=#3e3e3e gui=underline
	highlight PmenuSbar guibg=Grey gui=NONE
	highlight PmenuThumb guibg=White gui=NONE
	highlight TabLine guifg=#a09998 guibg=#202020 gui=underline
	highlight TabLineFill guifg=#a09998 guibg=#202020 gui=underline
	highlight TabLineSel guifg=#a09998 guibg=#404850 gui=underline
	if has('spell')
		highlight SpellBad gui=undercurl
		highlight SpellCap gui=undercurl
		highlight SpellLocal gui=undercurl
		highlight SpellRare gui=undercurl
	endif
endif
highlight Cursor guifg=#000000 guibg=#ff880f gui=NONE
highlight CursorIM guifg=#070707 guibg=#ff880f gui=NONE
highlight DiffAdd guibg=#004B8A gui=NONE
highlight DiffChange guibg=#383838 gui=NONE
highlight DiffDelete guifg=#ED1A65 guibg=#ED1A65 gui=NONE
highlight DiffText guifg=#000000 guibg=#FF9900 gui=NONE
highlight Directory guifg=#aaaaba guibg=#474747 gui=NONE
highlight ErrorMsg guifg=#ffffff guibg=Red gui=NONE
highlight FoldColumn guifg=#BE9F51 guibg=#333333 gui=NONE
highlight Folded guifg=#BC9E50 guibg=#333333 gui=NONE
highlight IncSearch guifg=#222222 guibg=#93dc00 gui=NONE
highlight LineNr guifg=#828282 guibg=#191919 gui=NONE
highlight CursorLineNr guifg=#aaff00 guibg=#3e3e3e gui=bold
highlight MatchParen guifg=white guibg=#80a090 gui=bold
highlight ModeMsg guifg=#ffffff gui=NONE
highlight MoreMsg guifg=#ffffff gui=NONE
highlight NonText guifg=#211d1a guibg=#211d1a gui=NONE
highlight Normal guifg=#FFFFFF guibg=#2B2B2B gui=NONE
highlight Question guifg=#ffffff gui=NONE
highlight Search guifg=#222222 guibg=#aaff00 gui=NONE
highlight SignColumn guifg=Cyan guibg=Grey gui=NONE
highlight SpecialKey guifg=#378fff gui=NONE
highlight StatusLine guifg=#ffffff guibg=#003366 gui=NONE
highlight StatusLineNC guifg=#cccccc guibg=#000000 gui=NONE
highlight Title guifg=#ffbf9f guibg=#370f07 gui=NONE
highlight VertSplit guifg=#314a00 guibg=bg gui=NONE
highlight Visual guifg=#2c2c2c guibg=#6db0d8 gui=reverse
highlight VisualNOS gui=bold,underline
highlight WarningMsg guifg=#ffffff gui=NONE
highlight WildMenu guifg=#ffffff guibg=#336699 gui=NONE
highlight link Boolean Constant
highlight link Character Constant
highlight Comment guifg=#4c8d47 gui=NONE
highlight link Conditional Statement
highlight Constant guifg=#336699 guibg=#333333 gui=NONE
highlight link Debug Special
highlight link Define PreProc
highlight link Delimiter Special
highlight Error guifg=White guibg=#ff0000 gui=NONE
highlight link Exception Statement
highlight link Float Number
highlight link Function Identifier
highlight Identifier guifg=#669933 gui=NONE
highlight Ignore guifg=bg gui=NONE
highlight link Include PreProc
highlight link Keyword Statement
highlight link Label Statement
highlight link Macro PreProc
highlight Number guifg=#336699 gui=NONE
highlight link Operator Statement
highlight link PreCondit PreProc
highlight PreProc guifg=#6C9F0E gui=NONE
highlight link Repeat Statement
highlight Special guifg=#cccccc gui=NONE
highlight link SpecialChar Special
highlight link SpecialComment Special
highlight Statement guifg=#4C94EB gui=NONE
highlight link StorageClass Type
highlight String guifg=#b87f23 gui=NONE
highlight link Structure Type
highlight link Tag Special
highlight Todo guifg=Yellow guibg=NONE gui=NONE
highlight Type guifg=#4c94eb gui=NONE
highlight link Typedef Type
highlight Underlined guifg=#4C94EB gui=underline
highlight Class guifg=#B1FF00 gui=NONE
highlight TagbarAccessPrivate guifg=#aaff00 gui=NONE
highlight TagbarAccessProtected guifg=#000000 gui=NONE
highlight TagbarAccessPublic guifg=#aaff00 gui=NONE
highlight TagbarComment guifg=#000000 gui=NONE
highlight TagbarFoldIcon guifg=#1d7bde gui=NONE
highlight TagbarHighlight guifg=#aaff00 gui=NONE
highlight TagbarKind guifg=#0094ca gui=NONE
highlight TagbarNestedKind guifg=#ffd900 gui=NONE
highlight TagbarPseudoID guifg=#080808 gui=NONE
highlight TagbarScope guifg=#ff6106 gui=NONE
highlight TagbarSignature guifg=#888888 gui=NONE
highlight TagbarType guifg=#ffce0a gui=NONE
highlight TagbarVisibilityPrivate guifg=#ff0004 gui=NONE
highlight TagbarVisibilityProtected guifg=#ffffff gui=NONE
highlight TagbarVisibilityPublic guifg=#00d431 gui=NONE
highlight DefinedName guifg=#865A14 gui=NONE
highlight Namespace guifg=#C99E74 gui=NONE
highlight Method guifg=#FF8000 gui=NONE
highlight CTagsGlobalVariable guifg=#c0c0c0 gui=NONE
highlight CTagsLocalVariable guifg=#c0c0c0 gui=NONE
highlight CTagsMember guifg=#c0c0c0 gui=NONE
highlight CTagsVariable guifg=#c0c0c0 gui=NONE
highlight CTagsFunction guifg=#ff8000 gui=NONE
highlight CTagsClass guifg=#ffd700 gui=NONE
highlight EnumerationValue guifg=#7F7F7F gui=NONE
highlight link Enumeration Keyword
highlight CursorLineNr guifg=#aaff00 guibg=#3e3e3e gui=bold


"ColorScheme metadata{{{
if v:version >= 700
	let g:wip_Metadata = {
				\"Palette" : "#000000:#5EA9F3:#7F7F7F:#FF0000:#A020F0:#0000FF:#ADD8E6:#00FF00:#FFFF00:#FFA500:#E6E6FA:#A52A2A:#8B6914:#1E90FF:#FFC0CB:#90EE90:#1A1A1A:#4D4D4D:#BFBFBF:#E5E5E5",
				\"Last Change" : "2013 Sep 15",
				\"Name" : "wip",
				\}
endif
"}}}
" vim:set foldmethod=marker expandtab filetype=vim:
