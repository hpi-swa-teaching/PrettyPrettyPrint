testing
testKeepEmptyLines

	self
		assert: 'testMethod
	1.
	
	2.
	3.
	
	4'
		equals: (PPPPrinter format: 'testMethod
	1.
	
	2.
	3.
	
	
	4' preferences: [:profile | profile keepEmptyLines: true; newlineAfterSelector: false; newlineBeforeReturn: false; dotAfterReturn: false]).