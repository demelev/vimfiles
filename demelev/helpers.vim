function! StAlignEq(line1, line2)
	let l:eqLen = 0
	let lineList = []

	for lNumber in range(a:line1, a:line2)
		call cursor(lNumber, 1)
		execute "normal f="

		let c = virtcol(".")
		call add(lineList, c)
		if c > l:eqLen 
			let l:eqLen = c
		endif

	endfor

	let idx = 0
	for lineNumber in range( a:line1, a:line2 )
		call cursor(lineNumber, 1)
		exec "normal f="
		exec "normal ".(l:eqLen - virtcol("."))."i "
		let idx += 1
	endfor

	echo l:eqLen
endfunction

command! -range AlignEq :call StAlignEq(<line1>, <line2>)
vmap <Leader>a :AlignEq<CR>
