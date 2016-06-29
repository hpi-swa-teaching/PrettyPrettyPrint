as yet unclassified
testPrintReturnNode
	| returnNode printer |
	
	printer := PPPPrinter new.
	
	returnNode := PPPSequenceNode
		temporaries: OrderedCollection new
		statements: {PPPReturnNode value: (PPPVariableNode new name: 'ourReturn')}.
	
	self assert: '^ourReturn' equals: (returnNode accept: printer)