testing
testVeryShortCascade
	
	| printer cascadeNode formattedCascade |
	
	printer := PPPPrinter new.
	
	cascadeNode := PPPCascadeNode
		receiver: (PPPVariableNode name: 'self')
		messages: (OrderedCollection
			with: (PPPMessageNode receiver: nil selector: 'hi')
			with: (PPPMessageNode
				receiver: nil
				selector: 'ho:hu:'
				arguments: (OrderedCollection
					with: (PPPLiteralNode
						value: '1'
						literalType: #number)
					with: (PPPLiteralNode
						value: '2'
						literalType: #number)))
			with: (PPPMessageNode receiver: nil selector: 'yourself')).
	cascadeNode needsStructuralLinebreak: false.
	cascadeNode accept: printer.
	formattedCascade := printer wholeContent.
	self assert: 'self hi; ho: 1 hu: 2; yourself' equals: formattedCascade