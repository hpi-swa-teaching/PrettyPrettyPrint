visit-node
printMessageNodeMultiline: aPPPMessageNode 
	| buffer |
	buffer := WriteStream on: ''.
	
	aPPPMessageNode ifNotInCascade: [ buffer nextPutAll: (self visitValueNode: aPPPMessageNode receiver) ].
	
	aPPPMessageNode isUnaryMessage ifTrue: [ buffer nextPutAll: (self printUnaryMessage: aPPPMessageNode) ].
	aPPPMessageNode isBinaryMessage ifTrue: [ buffer nextPutAll: (self printBinaryMessageMultiline: aPPPMessageNode) ].
	aPPPMessageNode isNamedMessage ifTrue: [ buffer nextPutAll: (self printNamedMessageMultiline: aPPPMessageNode) ].
	
	^buffer contents