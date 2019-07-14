as yet unclassified
testVisitAssignmentNodeLength
	
	| anAssignmentNode content |
	
	anAssignmentNode := self assignmentNodeWithValue: self variableNode.		
	PPPPreprocessor new visitAssignmentNode: anAssignmentNode.
	
	self assert: 20 equals: anAssignmentNode length.
	
	content := OrderedCollection with: self literalNode with: self unaryMessageNode.
	anAssignmentNode value: (PPPArrayNode contents: content constant: false).
	PPPPreprocessor new visitAssignmentNode: anAssignmentNode.
	
	self assert: 38 equals: anAssignmentNode length
	