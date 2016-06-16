as yet unclassified
visitSequenceNode: aNode

	self printIndent.
	
	buffer nextPutAll: '| '.
	aNode temporaries do: [ :g | buffer nextPutAll: g, ' '].
	buffer nextPut: $|.
	
	self class returnAfterTemporaryDeclaration ifTrue: [
		buffer cr ].
	
	aNode statements do: [ :s |
		self printIndent.
		s accept: self.
		buffer nextPut: $.; cr ].
	
	self printIndent.
	aNode return accept: self.