as yet unclassified
testVisitVariableNodeDepth
	
	| aVariableNode |
	aVariableNode := PPPVariableNode name: 'Dieter'.
		
	PPPPreprocessor new visitVariableNode: aVariableNode.
	self assert: 0 equals: aVariableNode depth