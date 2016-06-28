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
			statement precededByEmptyLine ifTrue: [ self newLineIndentOn: buffer ].
			buffer nextPutAll: (self visitNode: statement) ]
		separatedBy: [
			buffer nextPut: $..
			self newLineIndentOn: buffer ].
	
	aNode return ifNotNil: [
		aNode statements ifNotEmpty: [
			buffer nextPut: $..
			aNode return precededByEmptyLine ifTrue: [ self newLineIndentOn: buffer ].
			self newLineIndentOn: buffer ].
		buffer nextPutAll: (self printReturn: aNode return) ].
	
	^ buffer contents