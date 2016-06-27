as yet unclassified
testPrintReturnNode
	| returnNode printer |
	
	printer := PPPPrinter new.
	
	returnNode := PPPSequenceNode
		temporaries: OrderedCollection new
		statements: OrderedCollection new
		return: (PPPVariableNode new name: 'ourReturn').
	
	self assert: '^ourReturn' equals: (returnNode accept: printer)