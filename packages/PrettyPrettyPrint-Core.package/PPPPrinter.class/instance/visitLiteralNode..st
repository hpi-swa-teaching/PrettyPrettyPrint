visit-node
visitLiteralNode: aNode 
	| buffer |
	buffer := WriteStream on: ''.
	buffer nextPutAll: aNode value.
	
	^buffer contents