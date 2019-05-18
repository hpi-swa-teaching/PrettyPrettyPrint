testing
testPrintReturnNode
	| returnNode printer |
	
	printer := PPPPrinter new.
	printer profile
		newlineAfterSelector: false; 
		dotAfterReturn: false;
		newlineBeforeReturn: false;
		spaceBeforeReturn: false.
	
	returnNode := PPPSequenceNode
		temporaries: OrderedCollection new
		statements: { PPPReturnNode value: (PPPVariableNode new name: 'ourReturn') }.
	
	self assert: '^ourReturn' equals: (returnNode accept: printer)