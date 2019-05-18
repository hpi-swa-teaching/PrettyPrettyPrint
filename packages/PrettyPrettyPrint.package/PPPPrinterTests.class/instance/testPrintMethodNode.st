testing
testPrintMethodNode

	| sequenceNode printer statements temporaries methodNode |
	
	printer := PPPPrinter new.
	printer profile newlineAfterSelector: false; 
	dotAfterReturn: false;
	newlineBeforeReturn: false;
	spaceBeforeReturn: false.
	
	sequenceNode := PPPSequenceNode new.
	temporaries := OrderedCollection new
		add: 'temp1';
		add: 'temp2';
		yourself.
	statements := { PPPAssignmentNode variable: 'variable' value: (PPPVariableNode new name: '4'). PPPReturnNode value: (PPPVariableNode new name: 'self') }.
	
	sequenceNode
		temporaries: temporaries;
		statements: statements.
	
	methodNode := PPPMethodNode new
		bodySequence: sequenceNode;
		selector: 'ourMethod:';
		addArgument: 'ourMethod:' name: 'argument';
		addArgument: 'with:' name: 'anotherArgument';
		yourself.
	
	self
		assert: 'ourMethod: argument with: anotherArgument 
	| temp1 temp2 |
	variable := 4.
	^self'
		equals: (methodNode accept: printer).