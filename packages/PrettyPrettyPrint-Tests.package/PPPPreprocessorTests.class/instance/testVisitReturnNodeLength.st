as yet unclassified
testVisitReturnNodeLength
	
	| aReturnNode value |
	
	value := PPPAssignmentNode variable: 'Dieter' value: (PPPVariableNode
		name: 'Hans').
	aReturnNode := PPPReturnNode value: value.
	PPPPreprocessor new visitReturnNode: aReturnNode.
	self assert: 15 equals: aReturnNode length