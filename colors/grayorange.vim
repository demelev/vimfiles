
<!-- saved from url=(0066)http://vimcolorschemetest.googlecode.com/svn/colors/grayorange.vim -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=windows-1251"></head><body><pre style="word-wrap: break-word; white-space: pre-wrap;">" Vim color file
" Maintainer:   Charles &lt;cherry_avium@yahoo.com&gt;
" Last Change:  11 June 2004
" URL:		http://

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

" your pick:
" set background=light
set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="GrayOrange"

" OR

" highlight clear Normal
" set background&amp;
" highlight clear
" if &amp;background == "light"
"   highlight Error ...
"   ...
" else
"   highlight Error ...
"   ...
" endif

" A good way to see what your colorscheme does is to follow this procedure:
" :w 
" :so % 
"
" Then to see what the current setting is use the highlight command.  
" For example,
" 	:hi Cursor
" gives
"	Cursor         xxx guifg=bg guibg=fg 
 	

hi Normal guifg=beige guibg=#204040
" Uncomment and complete the commands you want to change from the default.

"hi Cursor		guibg=red
"hi CursorIM		gui=inverse
"hi Directory	
"hi DiffAdd		
"hi DiffChange	
"hi DiffDelete	
"hi DiffText	
"hi ErrorMsg	
"hi VertSplit	
"hi Folded		
"hi FoldColumn	
"hi IncSearch	
hi LineNr guifg=gray80 "guibg=black guibg=gray50
"hi ModeMsg		
"hi MoreMsg		
"hi NonText		guibg=gray50
"hi Question	
"hi Search		
"hi SpecialKey	
"hi StatusLine	
"hi StatusLineNC	
"hi Title		
"hi Visual		
"hi VisualNOS	
"hi WarningMsg	
"hi WildMenu	
"hi Menu		
"hi Scrollbar	
"hi Tooltip		

" syntax highlighting groups
hi Comment	guifg=darkkhaki	gui=underline guibg=gray30
" hi Comment	guifg=darkkhaki	guibg=gray30
hi Constant	guifg=navajowhite
hi Identifier	guifg=lavender	
" hi Function	guibg=gray60
hi Statement	guifg=darkseagreen			    gui=bold
hi PreProc	guifg=darkseagreen
hi Type		guifg=goldenrod
hi Special	guifg=navajowhite			    gui=underline
hi Underlined	gui=underline
hi Ignore	guifg=black
hi Error	guifg=white
hi Todo		guibg=gold guifg=black			    gui=NONE
hi Operator	guifg=gold
hi Title	guifg=white

hi VimError	guifg=orange				    gui=bold
hi SpecialKey	guifg=gold

</pre></body></html>