as yet unclassified
testVisitSequenceNodeDepth
	
	| aSequenceNode aBlockNode |
	aBlockNode := PPPBlockNode
			bodySequence: (PPPSequenceNode
				statements: (OrderedCollection
					with: self variableNode
					with: self literalNode)).
	
	aSequenceNode := PPPSequenceNode
			statements: (OrderedCollection
				with: self variableNode
				with: self literalNode
				with: aBlockNode).
		
	PPPPreprocessor new visitSequenceNode: aSequenceNode.
	self assert: 1 equals: aSequenceNode depth