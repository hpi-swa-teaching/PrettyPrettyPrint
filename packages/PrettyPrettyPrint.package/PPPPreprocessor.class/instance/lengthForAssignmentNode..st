calculate length
lengthForAssignmentNode: anAssignmentNode
	
	| length |
	
	length := self additionalLengthForParentheses: anAssignmentNode.
	length := length + self additionalLengthForAssignment.
	length := length + anAssignmentNode variable size + anAssignmentNode value length.
	
	^ length