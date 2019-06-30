visit-node
depthForAssignmentNode: anAssignmentNode
	
	^ anAssignmentNode value depth + (self additionalDepthForParentheses: anAssignmentNode)
	