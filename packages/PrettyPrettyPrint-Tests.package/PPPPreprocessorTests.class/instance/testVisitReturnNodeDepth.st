as yet unclassified
testVisitReturnNodeDepth
	
	| aReturnNode value content |
	value := self assignmentNode.
	aReturnNode := PPPReturnNode value: value.		
	PPPPreprocessor new visitReturnNode: aReturnNode.
	
	self assert: 0 equals: aReturnNode depth.
	
	content := OrderedCollection with: self literalNode with: self unaryMessageNode.
	value := PPPAssignmentNode variable: 'variable' value: (PPPArrayNode contents: content constant: false).
	aReturnNode value: value.
	PPPPreprocessor new visitReturnNode: aReturnNode.
	
	self assert: 1 equals: aReturnNode depth