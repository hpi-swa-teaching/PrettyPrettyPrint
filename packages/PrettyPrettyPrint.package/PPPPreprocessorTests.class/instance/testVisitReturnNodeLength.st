as yet unclassified
testVisitReturnNodeLength
	
	| aReturnNode value |
	value := self assignmentNodeWithValue: self variableNode.
	aReturnNode := PPPReturnNode value: value.		
	PPPPreprocessor new visitReturnNode: aReturnNode.
	
	self assert: 21 equals: aReturnNode length