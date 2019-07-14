as yet unclassified
testVisitVariableNodeDepth
	
	| aVariableNode |
	aVariableNode := self variableNode.
		
	PPPPreprocessor new visitVariableNode: aVariableNode.
	self assert: 0 equals: aVariableNode depth