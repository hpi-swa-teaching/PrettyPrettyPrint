visit-node
printMessageNode: aNode 
	| buffer |
	buffer := WriteStream on: ''.
	
	aNode ifNotInCascade: [ buffer nextPutAll: (self visitValueNode: aNode receiver) ].
	
	aNode isUnaryMessage ifTrue: [ buffer nextPutAll: (self printUnaryMessage: aNode) ].
	aNode isBinaryMessage ifTrue: [ buffer nextPutAll: (self printBinaryMessage: aNode) ].
	aNode isNamedMessage ifTrue: [ buffer nextPutAll: (self printNamedMessage: aNode) ].
	
	^buffer contents