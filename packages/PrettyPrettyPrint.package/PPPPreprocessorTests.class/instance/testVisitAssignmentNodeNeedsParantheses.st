as yet unclassified
testVisitAssignmentNodeNeedsParantheses
	
	| outerAssignmentNode innerAssignmentNode value |
	
	value := self literalNode.
	innerAssignmentNode := PPPAssignmentNode variable: 'someNumber' value: value.
	outerAssignmentNode := PPPAssignmentNode variable: 'someVariable' value: innerAssignmentNode.
	
	PPPPreprocessor new visitAssignmentNode: outerAssignmentNode.
	
	self assert: true equals: innerAssignmentNode needsParantheses.