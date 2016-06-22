as yet unclassified
testPrintAssignmentNode
	| printer assignmentNode valueNode |
	
	valueNode := PPPLiteralNode new
		literalType: #string;
		value: 'myValue';
		yourself.
		
	assignmentNode := PPPAssignmentNode new
		variable: 'myVar';
		value: valueNode.
	
	printer := PPPPrinter new.
	
	assignmentNode accept: printer.
	
	self assert: 'myVar := ''myValue''' equals: (printer visitAssignmentNode: assignmentNode)