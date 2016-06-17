as yet unclassified
testPrintReturnNode
	| returnNode printer |
	
	printer := PPPPrinter new.
	returnNode := PPPReturnNode new
		value: (PPPVariableNode new name: 'ourReturn').
	
	returnNode accept: printer.
	
	self assert: (printer bufferContents ) equals: '^ourReturn'