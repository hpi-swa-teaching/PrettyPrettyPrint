visit-node
visitReturnNode: aReturnNode
	
	aReturnNode value accept: self.
	aReturnNode
		length: (self lengthForReturnNode: aReturnNode);
		needsStructuralLinebreak: (self
			structuralLinebreakForReturnNode: aReturnNode)