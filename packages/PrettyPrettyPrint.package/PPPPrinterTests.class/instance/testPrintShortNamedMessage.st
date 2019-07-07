testing
testPrintShortNamedMessage
	self
		assert: 'testMethod
	buffer nextPut: $ '
		equals: (PPPPrinter format: 'testMethod buffer nextPut: $ ' preferences: self preferenceBlock)