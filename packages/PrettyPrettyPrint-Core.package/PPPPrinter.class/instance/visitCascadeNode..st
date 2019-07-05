visit-node
visitCascadeNode: aNode 
	| buffer |
	buffer := WriteStream on: ''.
	
	buffer nextPutAll: (self visitValueNode: aNode receiver).
	self incrementIndent.
	
	aNode messages
		do: [ :message |
			self newLineIndentOn: buffer.
			buffer nextPutAll: (self visitValueNode: message) ]
		separatedBy: [ buffer nextPut: $; ].
	
	self decrementIndent.
	
	^buffer contents