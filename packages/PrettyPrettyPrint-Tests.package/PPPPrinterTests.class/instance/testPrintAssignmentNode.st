testing
testPrintAssignmentNode
	
	| printer assignmentNode valueNode formattedAssignment |
	
	valueNode := PPPLiteralNode new
		literalType: #string;
		value: '''myValue''';
		yourself.
	
	assignmentNode := PPPAssignmentNode new
		variable: 'myVar';
		value: valueNode;
		yourself.
	
	printer := PPPPrinter new.
	self preferenceBlock value: printer profile.
	printer visitAssignmentNode: assignmentNode.
	formattedAssignment := printer wholeContent.
	self assert: 'myVar := ''myValue''' equals: formattedAssignment