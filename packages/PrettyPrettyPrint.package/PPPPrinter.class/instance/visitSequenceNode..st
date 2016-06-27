as yet unclassified
visitSequenceNode: aNode
	| buffer |
	
	buffer := WriteStream on: ''.
	
	aNode temporaries ifNotEmpty: [
		buffer nextPutAll: '| '.
		aNode temporaries do: [ :g | buffer nextPutAll: g, ' '].
		buffer nextPut: $|.
		
		self profile newlineAfterTemporaryDeclaration ifTrue: [
			buffer cr.
			self printIndentOn: buffer ]].
	
	aNode statements
		do: [ :s |
			buffer nextPutAll: (s accept: self) ]
		separatedBy: [
			buffer nextPut: $.; cr.
			self printIndentOn: buffer ].
	
	aNode return ifNotNil: [
		aNode statements ifNotEmpty: [
			buffer nextPut: $.; cr.
			self printIndentOn: buffer ].
		buffer nextPutAll: (self printReturn: aNode return) ].
	
	^ buffer contents