as yet unclassified
testVisitAssignmentNodeDepth
	
	| anAssignmentNode content |
	
	anAssignmentNode := self assignmentNodeWithValue: self variableNode.		
	PPPPreprocessor new visitAssignmentNode: anAssignmentNode.
	
	self assert: 0 equals: anAssignmentNode depth.
	
	content := OrderedCollection with: self literalNode with: self unaryMessageNode.
	anAssignmentNode value: (PPPArrayNode contents: content constant: false).
	PPPPreprocessor new visitAssignmentNode: anAssignmentNode.
	
	self assert: 1 equals: anAssignmentNode depth
	