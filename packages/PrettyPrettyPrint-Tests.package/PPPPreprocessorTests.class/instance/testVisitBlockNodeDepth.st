as yet unclassified
testVisitBlockNodeDepth
	
	| aBlockNode content |
	
	aBlockNode := PPPBlockNode bodySequence: 
		(PPPSequenceNode statements: 
			(OrderedCollection 
				with: self variableNode 
				with: self literalNode)).
	PPPPreprocessor new visitBlockNode: aBlockNode.
	
	self assert: 1 equals: aBlockNode depth.
	
	content := OrderedCollection 
		with: self literalNode
		with: self unaryMessageNode.
		
	aBlockNode bodySequence addStatement: (PPPArrayNode contents: content constant: false).
	PPPPreprocessor new visitBlockNode: aBlockNode.
	
	self assert: 2 equals: aBlockNode depth
	