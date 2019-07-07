as yet unclassified
testVisitSequenceNodeLength
	
	| aSequenceNode aBlockNode |
	aBlockNode := PPPBlockNode bodySequence: 
		(PPPSequenceNode statements: 
			(OrderedCollection 
				with: (PPPVariableNode name: 'Dieter') 
				with: (PPPLiteralNode value: '1' literalType: #number))).
	
	aSequenceNode := PPPSequenceNode 
		temporaries: (OrderedCollection with: 'temp1' with: 'temp2')
		statements: 
			(OrderedCollection 
				with: (PPPVariableNode name: 'Dieter') 
				with: (PPPLiteralNode value: '1' literalType: #number)
				with: aBlockNode).
			
	PPPPreprocessor new visitSequenceNode: aSequenceNode.
	self assert: 15 equals: aSequenceNode length