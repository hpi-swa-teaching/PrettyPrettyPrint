helpers-indent
newLineIndent
	
	self printedLinesBuffer nextPutAll: self currentLine contents, 
		Character cr.
	self currentLine: (WriteStream on: '').
	self currentIndent timesRepeat: [ self currentLine tab ]