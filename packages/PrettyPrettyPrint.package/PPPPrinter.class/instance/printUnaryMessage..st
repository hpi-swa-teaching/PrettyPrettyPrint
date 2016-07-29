visit-node
printUnaryMessage: aNode 
	| buffer |
	buffer := WriteStream on: ''.
	
	aNode ifNotInCascade: [ buffer space ].
	buffer nextPutAll: aNode selector.
	
	^buffer contents