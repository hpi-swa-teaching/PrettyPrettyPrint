testing
testPrintShortNamedMessage
	self
		assert: 'testMethod
	buffer nextPut: $ '
		equals: (PPPPrinter format: 'testMethod buffer nextPut: $ ' preferences: [ :profile | profile 
	newlineAfterSelector: false; 
	dotAfterReturn: false;
	newlineBeforeReturn: false;
	spaceBeforeReturn: false ])