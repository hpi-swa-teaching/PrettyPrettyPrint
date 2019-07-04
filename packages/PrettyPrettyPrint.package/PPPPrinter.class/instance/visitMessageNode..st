visit-node
visitMessageNode: aPPPMessageNode 
	
	(self nodeFitsInLine: aPPPMessageNode)
		ifTrue: [ self  printMessageNode: aPPPMessageNode]
		ifFalse: [ self printMessageNodeMultiline: aPPPMessageNode]