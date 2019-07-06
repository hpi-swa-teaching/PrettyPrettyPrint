as yet unclassified
testTooLongBinaryMessageConcatenation
	
	| method formattedAssignment |
	
	method := 
		'testMethod
	| test |
	
	test := ''^'' , variableName , Character cr , Character tab
		, firstMessageSelector , '' '' , firstArgumentNode name , Character cr
		, Character tab , secondMessageSelector , '' ''.
	Transcript showln: ''test'''.
	
	formattedAssignment := PPPPrinter
		format: method
		preferences: PPPPrinterTests new preferenceBlock.
	self assert: method equals: formattedAssignment