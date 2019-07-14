testing
testMultilineArray
	
	| anArrayNode printer content formattedArray |
	
	content := OrderedCollection
		with: (PPPLiteralNode value: '1' literalType: #number)
		with: (PPPLiteralNode value: '5' literalType: #number)
		with: (PPPMessageNode
			receiver: (PPPVariableNode name: 'Hans')
			selector: 'hallo').
	anArrayNode := PPPArrayNode contents: content constant: true.
	anArrayNode needsStructuralLinebreak: true.
	
	printer := PPPPrinter new.
	self preferenceBlock value: printer profile.
	printer visitArrayNode: anArrayNode.
	formattedArray := printer wholeContent.
	self assert: '#( 1 
	5 
	Hans hallo )' equals: formattedArray