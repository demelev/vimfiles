function! LoadUnresolvedList()
	exec "read!git status"
	call cursor(1,1)
	let s:unresLineNumber = search("# Unmerged paths:")
	if s:unresLineNumber == 0
		exec "normal ggdG"
		call setline(1, "There is no unresolved files!")
		return
	endif

	call cursor(s:unresLineNumber + 3, 1)
	exec "normal dgg"
	let s:unresLineNumber = search("Untracked files")
	if s:unresLineNumber == 0 
		call cursor(1,1)
		return
	endif

	exec "".s:unresLineNumber-1 . ",$d"
	exec "normal gg"
endfunction

function! GitResolve( strategy )
	"let s:line = getline(".")
	call cursor(".", 1)

	call search(":\\s*", 'e')
	let s:pathStartIndex = col(".")
	exec "normal msf#"
	
	if s:pathStartIndex != col(".")
		exec "normal d$"
	endif
	
	"copy line in register 'a'
	exec "normal 'sy$"

	let s:line = @"
	echo s:line

	silent exec "normal :!git checkout --" . a:strategy . " -- " . s:line . "<CR>"
	silent exec "normal :!git add " . s:line . "<CR>"
	exec "normal :s/#ours\|#theirs//"
	exec "normal $a #".a:strategy
	call cursor(line('.')+1, 0)
endfunction
echo "gitconflict plugin loaded"
let g:gitconflict_loaded = 1

