testing
testPrintSequenceNode
	| sequenceNode printer statements temporaries formattedSequence |
	
	printer := PPPPrinter new.
	self preferenceBlock value: printer profile.
	sequenceNode := PPPSequenceNode new.
	temporaries := OrderedCollection new
		add: 'temp1';
		add: 'temp2';
		yourself.
	statements := { PPPAssignmentNode variable: 'variable' value: (PPPVariableNode name: '4'). PPPReturnNode value: (PPPVariableNode name: 'self') }.
	
	sequenceNode
		temporaries: temporaries;
		statements: statements.
	sequenceNode accept: printer.
	formattedSequence := printer wholeContent.
	
	self
		assert: '| temp1 temp2 |
variable := 4.
^self'
		equals: formattedSequence