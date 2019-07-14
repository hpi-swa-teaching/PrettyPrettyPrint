as yet unclassified
testVisitBlockNodeLength
	
	| aBlockNode content |
	
	aBlockNode := PPPBlockNode bodySequence: 
		(PPPSequenceNode statements: 
			(OrderedCollection 
				with: self variableNode 
				with: self literalNode)).
	PPPPreprocessor new visitBlockNode: aBlockNode.
	
	self assert: 14 equals: aBlockNode length.
	
	content := OrderedCollection 
		with: self literalNode 
		with: self unaryMessageNode.
		
	aBlockNode bodySequence addStatement: (PPPArrayNode contents: content constant: false).
	PPPPreprocessor new visitBlockNode: aBlockNode.
	
	self assert: 42 equals: aBlockNode length
	