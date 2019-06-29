helpers-printing
printBinaryMessageMultiline: aPPPMessageNode 
	| buffer |
	buffer := WriteStream on: ''.
	self 
		incrementIndent;
		newLineIndentOn: buffer.
	buffer nextPutAll: aPPPMessageNode selector.
	self profile spaceAroundBinaryOperator ifTrue: [ buffer space ].
	
	"The argument should be printed in the same line."
	self printingMultiline: false.
	buffer nextPutAll: (self visitValueNode: aPPPMessageNode arguments first).
	self printingMultiline: true.
	
	^buffer contents