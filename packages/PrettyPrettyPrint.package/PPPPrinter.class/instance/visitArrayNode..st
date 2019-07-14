visit-node
visitArrayNode: aPPPArrayNode 
	
	aPPPArrayNode needsStructuralLinebreak
		ifTrue: [self printArrayNodeMultiline: aPPPArrayNode]
		ifFalse: [self printArrayNode: aPPPArrayNode]