as yet unclassified
testVisitReturnNodeLength
	
	| aReturnNode value |
	
	value := self assignmentNode.
	aReturnNode := PPPReturnNode value: value.
	PPPPreprocessor new visitReturnNode: aReturnNode.
	self assert: 21 equals: aReturnNode length