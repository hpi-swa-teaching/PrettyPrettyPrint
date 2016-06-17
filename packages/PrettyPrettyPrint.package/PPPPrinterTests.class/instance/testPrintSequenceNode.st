as yet unclassified
testPrintSequenceNode
	| sequenceNode printer return statements temporaries |
	
	printer := PPPPrinter new.
	sequenceNode := PPPSequenceNode new.
	temporaries := OrderedCollection new
		add: 'temp1';
		add: 'temp2';
		yourself.
	statements := OrderedCollection new
		add: (PPPAssignmentNode new 
			variable: (PPPVariableNode new name: 'variable');
			value: (PPPVariableNode new name: '4'));
		yourself.
	return := PPPReturnNode new value: (PPPVariableNode new name: 'self').
	
	sequenceNode
		temporaries: temporaries;
		statements: statements;
		return: return.
	
	sequenceNode accept: printer.
	
	self assert: printer bufferContents equals: '| temp1 temp2 |
variable := 4.
^self'