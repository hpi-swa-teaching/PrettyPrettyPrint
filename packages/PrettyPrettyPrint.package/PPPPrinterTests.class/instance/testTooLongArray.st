testing
testTooLongArray
	
	| anArrayNode printer content formattedArray |
	
	content := OrderedCollection
		with: ((PPPLiteralNode
			value: '123456789123456789123456789'
			literalType: #number)
			length: 27;
			yourself)
		with: ((PPPLiteralNode
			value: '123456789123456789123456789'
			literalType: #number)
			length: 27;
			yourself)
		with: ((PPPMessageNode
				receiver: ((PPPVariableNode
					name: 'aVeryVeryVeryVeryVeryVeryVeryLongName')
					length: 37;
					yourself)
				selector: 'aLongSelector')
			length: 51).
	anArrayNode := PPPArrayNode contents: content constant: false.
	anArrayNode
		needsStructuralLinebreak: false;
		length: 115.
	
	printer := PPPPrinter new.
	self preferenceBlock value: printer profile.
	printer visitArrayNode: anArrayNode.
	formattedArray := printer wholeContent.
	self
		assert: 
			'{ 123456789123456789123456789 . 123456789123456789123456789 . 
	aVeryVeryVeryVeryVeryVeryVeryLongName aLongSelector }'
		equals: formattedArray