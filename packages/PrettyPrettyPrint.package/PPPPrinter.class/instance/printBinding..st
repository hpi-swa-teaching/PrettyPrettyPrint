visit-node
printBinding: name

	(self stringFitsInLine: name) ifFalse: [self incrementIndent;
		newLineIndent;
		decrementIndent].
	self currentLine
		nextPutAll: name;
		space 