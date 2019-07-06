as yet unclassified
testPrintShortNamedMessage
	
	self
		assert: 'testMethod
	buffer nextPut: $ '
		equals: (PPPPrinter
			format: 'testMethod buffer nextPut: $ '
			preferences: PPPPrinterTests new preferenceBlock)