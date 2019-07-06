as yet unclassified
testVisitSequenceNodeDepth
	
	| aSequenceNode aBlockNode |
	
	aBlockNode := PPPBlockNode
		bodySequence: (PPPSequenceNode
			statements: (OrderedCollection
				with: (PPPVariableNode name: 'Dieter')
				with: (PPPLiteralNode value: '1' literalType: #number))).
	
	aSequenceNode := PPPSequenceNode
		statements: (OrderedCollection
			with: (PPPVariableNode name: 'Dieter')
			with: (PPPLiteralNode value: '1' literalType: #number)
			with: aBlockNode).
	
	PPPPreprocessor new visitSequenceNode: aSequenceNode.
	self assert: 1 equals: aSequenceNode depth