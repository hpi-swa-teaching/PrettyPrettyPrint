testing
testTooMuchIndentForAssignmentNodeBug
	| method formattedAssignment |
	
	method := 'testPragmaExtracting
	| test |
	
	test := OrderedCollection new
		add: self validIgnoreParsedPragma;
		yourself'.
	
	formattedAssignment := PPPPrinter format: method preferences: self preferenceBlock.
		
	self assert: method equals: formattedAssignment