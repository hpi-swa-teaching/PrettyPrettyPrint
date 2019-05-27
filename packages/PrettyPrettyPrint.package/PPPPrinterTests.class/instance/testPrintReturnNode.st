testing
testPrintReturnNode
	| returnNode printer |
	
	printer := PPPPrinter new.
	self preferenceBlock value: printer profile.
	
	returnNode := PPPSequenceNode
		temporaries: OrderedCollection new
		statements: { PPPReturnNode value: (PPPVariableNode new name: 'ourReturn') }.
	
	self assert: '^ourReturn' equals: (returnNode accept: printer)