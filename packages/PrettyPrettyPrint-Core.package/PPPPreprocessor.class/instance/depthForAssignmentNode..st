calculate depth
depthForAssignmentNode: anAssignmentNode
	
	^ anAssignmentNode value depth + (self additionalDepthForParentheses: anAssignmentNode)
	