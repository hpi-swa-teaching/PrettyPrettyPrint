visit-node
visitAssignmentNode: anAssignmentNode
	
	anAssignmentNode value accept: self.
	
	anAssignmentNode 
		length: (self lengthForAssignmentNode: anAssignmentNode);
		depth: (self depthForAssignmentNode: anAssignmentNode)
	