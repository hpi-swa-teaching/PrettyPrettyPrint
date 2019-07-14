testing
testPrintReturnNode
	| returnNode printer formattedReturn |
	
	printer := PPPPrinter new.
	self preferenceBlock value: printer profile.
	
	returnNode := PPPSequenceNode
		temporaries: OrderedCollection new
		statements: { PPPReturnNode value: (PPPVariableNode new name: 'ourReturn') }.
	returnNode accept: printer.	
	formattedReturn := printer wholeContent.
	
	self assert: '^ourReturn' equals: formattedReturn