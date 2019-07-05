helpers-printing
printBindingsOf: aPPPBlockNode
	
	self currentLine nextPut: $[.
	aPPPBlockNode bindings
		ifNotEmpty: [ self currentLine space ];
		do: [ :name | 
			(self stringFitsInLine: name) ifFalse: [self incrementIndent;
				newLineIndent;
				decrementIndent].
			self currentLine
				nextPutAll: name;
				space ];
		ifNotEmpty: [ self currentLine nextPut: $| ]