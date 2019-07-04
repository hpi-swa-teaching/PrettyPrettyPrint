visit-node
visitAssignmentNode: anAssignmentNode

	anAssignmentNode value accept: self.
	
	self setParenthesesForAssignmentNode: anAssignmentNode.
	
	anAssignmentNode
		length: (self lengthForAssignmentNode: anAssignmentNode);
		depth: (self depthForAssignmentNode: anAssignmentNode)