testing
testPrintCascade
	| printer cascadeNode |
	
	printer := PPPPrinter new.
	self preferenceBlock value: printer profile.
		
	cascadeNode := PPPCascadeNode
		receiver: (PPPVariableNode name: 'self')
		messages: (OrderedCollection
			with: (PPPMessageNode receiver: nil selector: 'asString')
			with: (PPPMessageNode
				receiver: nil
				selector: 'toBuffer:and:'
				arguments: (OrderedCollection
					with: (PPPLiteralNode value: '5' literalType: #number)
					with: (PPPLiteralNode value: '3' literalType: #number)))
			with: (PPPMessageNode receiver: nil selector: 'yourself')).
	cascadeNode needsStructuralLinebreak: true.
	
	self
		assert: 'self
	asString;
	toBuffer: 5 and: 3;
	yourself'
		equals: (cascadeNode accept: printer)