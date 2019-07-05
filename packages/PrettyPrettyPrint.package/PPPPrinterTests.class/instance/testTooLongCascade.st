testing
testTooLongCascade
	| printer cascadeNode formattedCascade |
	
	printer := PPPPrinter new.
	self preferenceBlock value: printer profile.
	
	cascadeNode := PPPCascadeNode
		receiver: (PPPVariableNode name: 'self')
		messages: (OrderedCollection
			with: (PPPMessageNode receiver: nil selector: 'iAmAVeryVeryVeryVeryLongSelector')
			with: (PPPMessageNode
				receiver: nil
				selector: 'iAmAlsoVeryVery:VeryLong:'
				arguments: (OrderedCollection
					with: (PPPLiteralNode value: '5123' literalType: #number)
					with: (PPPLiteralNode value: '31234' literalType: #number)))
			with: (PPPMessageNode receiver: nil selector: 'yourself')).
	cascadeNode 
		needsStructuralLinebreak: false;
		length: 86.
	cascadeNode accept: printer.
	formattedCascade := printer wholeContent.
		
	self
		assert: 'self
	iAmAVeryVeryVeryVeryLongSelector;
	iAmAlsoVeryVery: 5123 VeryLong: 31234;
	yourself'
		equals: formattedCascade