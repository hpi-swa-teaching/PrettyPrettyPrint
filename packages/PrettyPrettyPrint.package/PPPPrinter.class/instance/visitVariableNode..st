as yet unclassified
visitVariableNode: aNode
	| buffer |
	buffer := WriteStream on: ''.
	
	self printOpenParethesesOf: aNode on: buffer.
	buffer nextPutAll: aNode name.
	self printCloseParethesesOf: aNode on: buffer.
	
	^buffer contents