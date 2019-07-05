visit-node
visitReturnNode: aReturnNode
	
	aReturnNode value accept: self.
	
	aReturnNode 
		length: (self lengthForReturnNode: aReturnNode);
		depth: (self depthForReturnNode: aReturnNode);
		needsStructuralLinebreak: (self structuralLinebreakForReturnNode: aReturnNode)
	