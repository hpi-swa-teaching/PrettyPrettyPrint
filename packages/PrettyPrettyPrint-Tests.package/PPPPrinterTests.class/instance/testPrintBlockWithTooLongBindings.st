testing
testPrintBlockWithTooLongBindings
	
	| blockNode printer formattedBlock |
	
	printer := PPPPrinter new.
	self preferenceBlock value: printer profile.
	
	blockNode := PPPBlockNode new
		bindings: (OrderedCollection
				with: ':veryveryverylongbinding1'
				with: ':veryveryverylongbinding2'
				with: ':veryveryverylongbinding3'
				with: ':veryveryverylongbinding4');
		bodySequence: (PPPSequenceNode new
				temporaries: (OrderedCollection
						with: 'temp1'
						with: 'temp2');
				statements: { PPPAssignmentNode new
							variable: 'variable';
							value: (PPPVariableNode new
								name: '4');
							yourself . 
						PPPReturnNode
							value: (PPPVariableNode new
								name: 'self') }).
	blockNode needsStructuralLinebreak: true.
	blockNode accept: printer.
	formattedBlock := printer wholeContent.
	self
		assert: 
			'[ :veryveryverylongbinding1 :veryveryverylongbinding2 :veryveryverylongbinding3 
	:veryveryverylongbinding4 |
	| temp1 temp2 |
	variable := 4.
	^self ]'
		equals: formattedBlock