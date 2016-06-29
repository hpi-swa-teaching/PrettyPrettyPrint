visit-node
visitMessageNode: aNode
	| buffer |
	
	buffer := WriteStream on: ''.
	
	aNode receiver ifNotNil: [
		buffer nextPutAll: (self visitValueNode: aNode receiver) ].
	
	aNode isUnaryMessage ifTrue: [
		aNode ifNotInCascade: [ buffer space ].
		buffer nextPutAll: aNode selector ].
	aNode isBinaryMessage ifTrue: [ buffer nextPutAll: (self printBinaryMessage: aNode) ].
	aNode isNamedMessage ifTrue: [ buffer nextPutAll: (self printNamedMessage: aNode) ].
	
	^ buffer contents