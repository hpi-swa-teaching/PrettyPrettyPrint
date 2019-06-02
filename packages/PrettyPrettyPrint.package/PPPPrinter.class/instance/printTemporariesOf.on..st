helpers-printing
printTemporariesOf: aNode on: aBuffer

	aNode temporaries ifNotEmpty: [
		aBuffer nextPutAll: '| '.
		aNode temporaries do: [ :temp | aBuffer nextPutAll: temp , ' ' ].
		aBuffer nextPut: $|.
		self newLineIndentOn: aBuffer.
		self profile newlineAfterTemporaryDeclaration ifTrue: [ self newLineIndentOn: aBuffer ] ]