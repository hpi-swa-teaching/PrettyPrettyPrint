as yet unclassified
testPrintingMultilineStringLiterals	
	| method |
	
	method := 
		'testMethod
	
	method := ''very very very long multiline
	string that still fits in the assignment line'''.
	
	self
		assert: method
		equals: (PPPPrinter
			format: method
			preferences: PPPPrinterTests new preferenceBlock)