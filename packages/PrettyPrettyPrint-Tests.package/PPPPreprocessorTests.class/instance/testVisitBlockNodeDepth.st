as yet unclassified
testVisitBlockNodeDepth
	
	| aBlockNode content |
	
	aBlockNode := PPPBlockNode bodySequence: (PPPSequenceNode
		statements: (OrderedCollection
			with: (PPPVariableNode name: 'Dieter')
			with: (PPPLiteralNode value: '1' literalType: #number))).
	PPPPreprocessor new visitBlockNode: aBlockNode.
	
	self assert: 1 equals: aBlockNode depth.
	
	content := OrderedCollection with: (PPPLiteralNode
		value: '1'
		literalType: #number) with: (PPPMessageNode
		receiver: (PPPVariableNode name: 'Hans')
		selector: 'hallo').
	
	aBlockNode bodySequence addStatement: (PPPArrayNode
		contents: content
		constant: false).
	PPPPreprocessor new visitBlockNode: aBlockNode.
	self assert: 2 equals: aBlockNode depth