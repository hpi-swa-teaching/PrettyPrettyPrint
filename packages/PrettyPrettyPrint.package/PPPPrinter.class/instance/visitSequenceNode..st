as yet unclassified
visitSequenceNode: aNode
	| buffer |
	
	buffer := WriteStream on: ''.
	self printIndentOn: buffer.
	
	aNode temporaries ifNotEmpty: [
		buffer nextPutAll: '| '.
		aNode temporaries do: [ :g | buffer nextPutAll: g, ' '].
		buffer nextPut: $|.
		
		self profile newlineAfterTemporaryDeclaration ifTrue: [
			buffer cr ]].
	
	aNode statements allButLastDo: [ :s |
		self printIndentOn: buffer.
		buffer nextPutAll: (s accept: self).
		buffer nextPut: $.; cr ].
	
	aNode statements ifNotEmpty: [
		self printIndentOn: buffer.
		buffer nextPutAll: (aNode statements last accept: self).
		aNode return ifNotNil: [ buffer nextPut: $.; cr ]].
	
	aNode return ifNotNil: [
		self printIndentOn: buffer.
		buffer nextPutAll: (self printReturn: aNode return) ].
	
	^ buffer contents