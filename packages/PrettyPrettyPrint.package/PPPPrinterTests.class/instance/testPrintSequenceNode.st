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
		add: (PPPAssignmentNode
			variable: 'variable'
			value: (PPPVariableNode name: '4'));
		yourself.
	return := PPPVariableNode name: 'self'.
	
	sequenceNode
		temporaries: temporaries;
		statements: statements;
		return: return.
	
	self assert: '| temp1 temp2 |
variable := 4.
^self' equals: (sequenceNode accept: printer)