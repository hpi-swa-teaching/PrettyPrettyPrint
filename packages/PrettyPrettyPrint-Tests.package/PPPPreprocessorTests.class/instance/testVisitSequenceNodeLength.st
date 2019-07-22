as yet unclassified
testVisitSequenceNodeLength
	
	| aSequenceNode aBlockNode |
	
	aBlockNode := PPPBlockNode
			bodySequence: (PPPSequenceNode
				statements: (OrderedCollection
					with: self variableNode
					with: self literalNode)).
	
	aSequenceNode := PPPSequenceNode
		temporaries: (OrderedCollection with: 'temp1' with: 'temp2')
		statements: (OrderedCollection
				with: self variableNode
				with: self literalNode
				with: aBlockNode).
			
	PPPPreprocessor new visitSequenceNode: aSequenceNode.
	self assert: 15 equals: aSequenceNode length