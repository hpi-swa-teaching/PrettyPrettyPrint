as yet unclassified
visitVariableNode: aNode
	| buffer |
	
	buffer := WriteStream on: ''.
	buffer nextPutAll: aNode name.
	
	^ buffer contents.