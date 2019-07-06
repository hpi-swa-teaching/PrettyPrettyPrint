testing
testPrintMethodNode
	
	| sequenceNode printer statements temporaries methodNode 
		formattedMethod |
	
	printer := PPPPrinter new.
	self preferenceBlock value: printer profile.
	
	sequenceNode := PPPSequenceNode new.
	temporaries := OrderedCollection new
		add: 'temp1';
		add: 'temp2';
		yourself.
	statements := { 
		PPPAssignmentNode
			variable: 'variable'
			value: (PPPVariableNode new name: '4') . 
		PPPReturnNode value: (PPPVariableNode new name: 'self') }.
	
	sequenceNode
		temporaries: temporaries;
		statements: statements.
	
	methodNode := PPPMethodNode new
		bodySequence: sequenceNode;
		selector: 'ourMethod:';
		addArgument: 'ourMethod:' name: 'argument';
		addArgument: 'with:' name: 'anotherArgument';
		yourself.
	methodNode accept: printer.
	formattedMethod := printer wholeContent.
	self
		assert: 'ourMethod: argument with: anotherArgument
	| temp1 temp2 |
	variable := 4.
	^self'
		equals: formattedMethod