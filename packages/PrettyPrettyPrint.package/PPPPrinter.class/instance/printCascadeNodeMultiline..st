visit-node
printCascadeNodeMultiline: aPPPCascadeNode 
	| buffer |
	buffer := WriteStream on: ''.
	
	buffer nextPutAll: (self visitValueNode: aPPPCascadeNode receiver).
	self incrementIndent.
	
	aPPPCascadeNode messages
		do: [ :message |
			self newLineIndentOn: buffer.
			buffer nextPutAll: (self visitValueNode: message) ]
		separatedBy: [ buffer nextPut: $; ].
	
	self decrementIndent.
	
	^buffer contents