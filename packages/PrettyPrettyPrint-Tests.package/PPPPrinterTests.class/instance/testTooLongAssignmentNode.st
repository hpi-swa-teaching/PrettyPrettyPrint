testing
testTooLongAssignmentNode
	
	| printer assignmentNode valueNode formattedAssignment |
	
	valueNode := PPPLiteralNode new
		literalType: #string;
		value: 
			'''myVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryLongValue''';
		length: 93;
		yourself.
	
	assignmentNode := PPPAssignmentNode new
		variable: 
			'myVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryLongVar';
		value: valueNode;
		length: 186;
		yourself.
	
	printer := PPPPrinter new.
	self preferenceBlock value: printer profile.
	printer visitAssignmentNode: assignmentNode.
	formattedAssignment := printer wholeContent.
	self
		assert: 
			'myVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryLongVar := 
	''myVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryVeryLongValue'''
		equals: formattedAssignment