as yet unclassified
visitCascadeNode: aNode
	| buffer |
	buffer := WriteStream on: ''.
	
	buffer nextPutAll: (self visitNode: aNode receiver).
	self incrementIndent.
	
	aNode messages
		do: [ :message |
			self newLineIndentOn: buffer.
			buffer nextPutAll: (self visitNode: message) ]
		separatedBy: [ buffer nextPut: $; ].
	
	self decrementIndent.
	
	^buffer contents