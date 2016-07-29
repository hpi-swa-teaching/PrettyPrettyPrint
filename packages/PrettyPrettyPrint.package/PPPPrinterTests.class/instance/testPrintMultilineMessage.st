testing
testPrintMultilineMessage
	| string shortString |
	
	string := 'testMethod
	self
		assert: 1
		equals: 2'.
	
	shortString := 'testMethod
	self assert: 1 equals: 2'.
	
	self
		assert: string equals: (PPPPrinter format: string preferences: [ :profile | profile maxLineLength: 10 ]);
		assert: shortString equals: (PPPPrinter format: string preferences: [ :profile | profile maxLineLength: 1000 ]).