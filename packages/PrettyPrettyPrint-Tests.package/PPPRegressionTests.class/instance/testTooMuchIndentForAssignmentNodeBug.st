as yet unclassified
testTooMuchIndentForAssignmentNodeBug
	
	| method formattedAssignment |
	
	method := 'testPragmaExtracting
	| test |
	
	test := OrderedCollection new
		add: self validIgnoreParsedPragma;
		yourself'.
	
	formattedAssignment := PPPPrinter
		format: method
		preferences: PPPPrinterTests new preferenceBlock.
	self assert: method equals: formattedAssignment