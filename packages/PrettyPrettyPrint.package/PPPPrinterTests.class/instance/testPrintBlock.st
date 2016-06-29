as yet unclassified
testPrintBlock
	| sequenceNode printer |
	
	printer := PPPPrinter new.
	
	sequenceNode := PPPBlockNode new
		bindings: (OrderedCollection with: ':b1' with: ':b2');
		bodySequence: (PPPSequenceNode new
			temporaries: (OrderedCollection with: 'temp1' with: 'temp2');
			statements: {
				PPPAssignmentNode new 
					variable: 'variable';
					value: (PPPVariableNode new name: '4');
					yourself.
				PPPReturnNode value: (PPPVariableNode new name: 'self')}).
	
	self assert: '[ :b1 :b2 |
	| temp1 temp2 |
	variable := 4.
	^self ]' equals: (sequenceNode accept: printer)