visit-node
visitSequenceNode: aNode
	| buffer |
	
	buffer := WriteStream on: ''.
	
	aNode temporaries ifNotEmpty: [
		buffer nextPutAll: '| '.
		aNode temporaries do: [ :g | buffer nextPutAll: g, ' '].
		buffer nextPut: $|.
		
		self profile newlineAfterTemporaryDeclaration ifTrue: [ self newLineIndentOn: buffer ]].
	
	aNode statements
		do: [ :statement |
			(statement precededByEmptyLine and: [self profile keepEmptyLines]) ifTrue: [ self newLineIndentOn: buffer ].
			buffer nextPutAll: (self visitValueNode: statement) ]
		separatedBy: [
			buffer nextPut: $..
			self newLineIndentOn: buffer ].
	
	self profile dotAfterReturn ifTrue: [ buffer nextPut: $. ].
	
	aNode trailingComments do: [ :comment |
		self newLineIndentOn: buffer.
		buffer nextPutAll: comment content ].
	
	^buffer contents