visit-node
visitBlockNode: aNode 

	| buffer multiLine |
	buffer := WriteStream on: ''.
	multiLine := aNode bodySequence statements size + (aNode bodySequence return notNil ifTrue: [ 1. ] ifFalse: [ 0. ]) > 1.
	
	self 
		incrementBlockLevel;
		printBlockOf: aNode on: buffer.
	
	multiLine
		ifTrue: [ self
			incrementIndent;
			newLineIndentOn: buffer. ]
		ifFalse: [ self profile encloseBlockSequenceWithSpace ifTrue: [ buffer space. ]. ].
	
	buffer nextPutAll: (aNode bodySequence accept: self).
	
	self profile encloseBlockSequenceWithSpace ifTrue: [ buffer space. ].
	buffer nextPut: $].
	self decrementBlockLevel.
	multiLine ifTrue: [ self decrementIndent. ].
	
	^ buffer contents.