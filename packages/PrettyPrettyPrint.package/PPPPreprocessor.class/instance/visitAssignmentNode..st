visit-node
visitAssignmentNode: anAssignmentNode
	
	anAssignmentNode value accept: self.
	
	self setParanthesesForAssignmentNode: anAssignmentNode.
	anAssignmentNode
		length: (self lengthForAssignmentNode: anAssignmentNode);
		needsStructuralLinebreak: (self
			structuralLinebreakForAssignmentNode: anAssignmentNode)