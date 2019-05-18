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
	
	
	4' preferences: [ :profile | profile 
	newlineAfterSelector: false; 
	dotAfterReturn: false;
	newlineBeforeReturn: false;
	spaceBeforeReturn: false ]).