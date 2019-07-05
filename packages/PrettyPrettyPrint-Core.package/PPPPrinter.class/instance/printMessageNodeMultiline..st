visit-node
printMessageNodeMultiline: aPPPMessageNode 
	
	aPPPMessageNode ifNotInCascade: [ self visitValueNode: aPPPMessageNode receiver ].
	
	aPPPMessageNode isUnaryMessage ifTrue: [ self printUnaryMessage: aPPPMessageNode ].
	aPPPMessageNode isBinaryMessage ifTrue: [ self printBinaryMessageMultiline: aPPPMessageNode ].
	aPPPMessageNode isNamedMessage ifTrue: [ self printNamedMessageMultiline: aPPPMessageNode ]