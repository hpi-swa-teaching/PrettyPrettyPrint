as yet unclassified
testPrintReturnNode
	| returnNode printer |
	
	printer := PPPPrinter new.
	returnNode := PPPReturnNode new
		value: (PPPVariableNode new name: 'ourReturn').
	
	self assert: '^ourReturn' equals: (returnNode accept: printer)