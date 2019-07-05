visit-node
printMessageNode: aPPPMessageNode 
	
	aPPPMessageNode ifNotInCascade: [ self visitValueNode: aPPPMessageNode receiver ].
	
	aPPPMessageNode isUnaryMessage ifTrue: [ self printUnaryMessage: aPPPMessageNode ].
	aPPPMessageNode isBinaryMessage ifTrue: [ self printBinaryMessage: aPPPMessageNode ].
	aPPPMessageNode isNamedMessage ifTrue: [ self printNamedMessage: aPPPMessageNode ]