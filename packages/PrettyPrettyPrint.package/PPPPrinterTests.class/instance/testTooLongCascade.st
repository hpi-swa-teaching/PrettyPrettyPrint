testing
testTooLongCascade
	| printer cascadeNode |
	
	printer := PPPPrinter new.
	
	cascadeNode := PPPCascadeNode
		receiver: (PPPVariableNode name: 'self')
		messages: (OrderedCollection
			with: (PPPMessageNode receiver: nil selector: 'iAmAVeryVeryVeryVeryLongSelector')
			with: (PPPMessageNode
				receiver: nil
				selector: 'iAmAlsoVeryVery:YeryLong:'
				arguments: (OrderedCollection
					with: (PPPLiteralNode value: '5123' literalType: #number)
					with: (PPPLiteralNode value: '31234' literalType: #number)))
			with: (PPPMessageNode receiver: nil selector: 'yourself')).
	cascadeNode needsStructuralLinebreak: false.
		
	self
		assert: 'self
	iAmAVeryVeryVeryVeryLongSelector;
	iAmAlsoVeryVery: 5123 YeryLong: 31234;
	yourself'
		equals: (cascadeNode accept: printer)