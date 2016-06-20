as yet unclassified
visitSequenceNode: aNode

	self printIndent.
	
	buffer nextPutAll: '| '.
	aNode temporaries do: [ :g | buffer nextPutAll: g, ' '].
	buffer nextPut: $|.
	
	self profile newlineAfterTemporaryDeclaration ifTrue: [
		buffer cr ].
	
	aNode statements allButLastDo: [ :s |
		self printIndent.
		s accept: self.
		buffer nextPut: $.; cr ].
	
	aNode statements ifNotEmpty: [
		self printIndent.
		aNode statements last accept: self.
		aNode return ifNotNil: [ buffer nextPut: $.; cr ]].
	
	aNode return ifNotNil: [
		self printIndent.
		aNode return accept: self ]