as yet unclassified
visitMessageNode: aNode
	| buffer |
	
	buffer := WriteStream on: ''.
	self printOpenParethesesOf: aNode on: buffer.
	
	aNode receiver ifNotNil: [
		buffer nextPutAll: (aNode receiver accept: self) ].
	
	aNode isUnaryMessage ifTrue: [
		aNode ifNotInCascade: [ buffer space ].
		buffer nextPutAll: aNode selector ].
	aNode isBinaryMessage ifTrue: [ buffer nextPutAll: (self printBinaryMessage: aNode) ].
	aNode isNamedMessage ifTrue: [ buffer nextPutAll: (self printNamedMessage: aNode) ].
	
	self printCloseParethesesOf: aNode on: buffer.
	
	^ buffer contents