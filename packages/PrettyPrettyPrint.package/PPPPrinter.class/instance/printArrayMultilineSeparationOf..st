visit-node
printArrayMultilineSeparationOf: aPPPArrayNode
	self currentLine space.
	aPPPArrayNode constant ifFalse: [ self currentLine
		nextPut: $.;
		space ].
	self newLineIndent 