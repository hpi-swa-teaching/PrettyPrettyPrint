visit-node
visitAssignmentNode: anAssignmentNode

	anAssignmentNode value accept: self.
	
	anAssignmentNode
		setParenthesesForAssignmentNode: anAssignmentNode;
		length: (self lengthForAssignmentNode: anAssignmentNode);
		depth: (self depthForAssignmentNode: anAssignmentNode)