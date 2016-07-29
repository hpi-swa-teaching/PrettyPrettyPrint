helpers-printing
printTemporariesOf: aNode on: aBuffer
	aNode temporaries ifNotEmpty: [
		aBuffer nextPutAll: '| '.
		aNode temporaries do: [ :g | aBuffer nextPutAll: g, ' '].
		aBuffer nextPut: $|.
		
		self profile newlineAfterTemporaryDeclaration ifTrue: [ self newLineIndentOn: aBuffer ]]
	