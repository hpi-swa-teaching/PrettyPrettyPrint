as yet unclassified
testVisitArrayNodeLength
	
	| anArrayNode content |
	
	content := OrderedCollection
		with: (PPPLiteralNode value: '1' literalType: #number)
		with: (PPPVariableNode name: 'Hans').
	anArrayNode := PPPArrayNode contents: content constant: true.
	
	PPPPreprocessor new visitArrayNode: anArrayNode.
	
	self assert: 9 equals: anArrayNode length.
	
	content := OrderedCollection
		with: (PPPLiteralNode value: '1' literalType: #number)
		with: (PPPMessageNode
			receiver: (PPPVariableNode name: 'Hans')
			selector: 'hallo').
	anArrayNode contents: content.
	anArrayNode constant: false.
	PPPPreprocessor new visitArrayNode: anArrayNode.
	self assert: 16 equals: anArrayNode length