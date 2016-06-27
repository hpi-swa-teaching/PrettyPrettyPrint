as yet unclassified
visitMessageNode: aNode
	| buffer |
	
	buffer := WriteStream on: ''.
	aNode receiver ifNotNil: [
		buffer
			nextPutAll: (aNode receiver accept: self);
			nextPut: $  ].
	
	aNode isUnaryMessage ifTrue: [ buffer nextPutAll: aNode selector ].
	aNode isBinaryMessage ifTrue: [ buffer nextPutAll: (self printBinaryMessage: aNode) ].
	aNode isNamedMessage ifTrue: [ buffer nextPutAll: (self printNamedMessage: aNode) ].
	
	^ buffer contents