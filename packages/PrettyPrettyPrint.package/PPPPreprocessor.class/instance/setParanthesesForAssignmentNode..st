parantheses
setParanthesesForAssignmentNode: anAssignmentNode

	anAssignmentNode value isAssignmentNode ifTrue: [
		anAssignmentNode value needsParantheses: true ]