as yet unclassified
testPrintMethodNode
	| sequenceNode printer return statements temporaries methodNode |
	
	printer := PPPPrinter new.
	
	sequenceNode := PPPSequenceNode new.
	temporaries := OrderedCollection new
		add: 'temp1';
		add: 'temp2';
		yourself.
	statements := OrderedCollection new
		add: (PPPAssignmentNode new 
			variable: 'variable';
			value: (PPPVariableNode new name: '4'));
		yourself.
	return := PPPReturnNode new value: (PPPVariableNode new name: 'self').
	
	sequenceNode
		temporaries: temporaries;
		statements: statements;
		return: return.
	
	
	methodNode := PPPMethodNode new
		bodySequence: sequenceNode;
		selector: 'ourMethod:';
		addArgument: 'ourMethod:' name: 'argument';
		addArgument: 'with:' name: 'anotherArgument';
		yourself.
	
	self assert: 'ourMethod: argument with: anotherArgument 
	| temp1 temp2 |
	variable := 4.
	^self' equals: (methodNode accept: printer)