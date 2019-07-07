helpers-printing
printBinaryMessageMultiline: aPPPMessageNode 

	self 
		incrementIndent;
		newLineIndent;
		decrementIndent.
	self currentLine nextPutAll: aPPPMessageNode selector.
	self profile spaceAroundBinaryOperator ifTrue: [ self currentLine space ].
	self visitValueNode: aPPPMessageNode arguments first