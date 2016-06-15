as yet unclassified
testPrintReturnNode
	| returnNode printer |
	
	printer := PPPPrinter new.
	returnNode := PPPReturnNode new
		value: 'ourReturn'.
	
	returnNode accept: printer.
	
	self assert: (printer bufferContents ) equals: '^ourReturn'