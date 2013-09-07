:python import vim

function! GenerateChapter( chapterNum, levelsNumber )
python << EOF


chNum     = int(vim.eval("a:chapterNum")) 
levelsNum = int(vim.eval("a:levelsNumber")) 
currentLine = vim.current.window.cursor[0]
cb = vim.current.buffer

def WriteJSON( key, value ):
	global currentLine
	string = "\t\t\"%s\":\"%s\"" % (str(key), str(value))
	cb.append(string, currentLine)
	currentLine += 1

cb.append("\"chapter%i\": {"%(chNum), currentLine)
currentLine += 1

for i in range(1,levelsNum+1):
	cb.append("\t\"%i-%i\":{"%(chNum, i), currentLine)
	currentLine += 1
	WriteJSON("steps","0")
	WriteJSON("stepsMin","0")
	WriteJSON("stepsMin2","0")
	cb.append("\t}", currentLine)
	currentLine += 1

cb.append("}", currentLine)
EOF
endfunction

"call GenerateChapter(1,20)
