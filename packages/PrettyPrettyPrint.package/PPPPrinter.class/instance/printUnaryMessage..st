visit-node
printUnaryMessage: aPPMessageNode 
	
	aPPMessageNode ifNotInCascade: [ self currentLine space ].
	self currentLine nextPutAll: aPPMessageNode selector