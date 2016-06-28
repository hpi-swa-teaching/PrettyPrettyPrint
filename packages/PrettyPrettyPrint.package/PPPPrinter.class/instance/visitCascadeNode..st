as yet unclassified
visitCascadeNode: aNode
	| buffer |
	buffer := WriteStream on: ''.
	
	self printOpenParethesesOf: aNode on: buffer.
	
	buffer nextPutAll: (aNode receiver accept: self).
	self incrementIndent.
	
	aNode messages
		do: [ :message |
			self newLineIndentOn: buffer.
			buffer nextPutAll: (message accept: self) ]
		separatedBy: [ buffer nextPut: $; ].
	
	self
		decrementIndent;
		printOpenParethesesOf: aNode on: buffer.
	
	^buffer contents