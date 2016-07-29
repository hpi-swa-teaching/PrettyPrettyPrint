visit-node
visitSequenceNode: aNode 
	| buffer |
	buffer := WriteStream on: ''.
	
	self
		printTemporariesOf: aNode on: buffer;
		printStatementsOf: aNode on: buffer.
	
	aNode trailingComments do: [ :comment |
		self newLineIndentOn: buffer.
		buffer nextPutAll: comment content ].
	
	^buffer contents