as yet unclassified
testPrintingNestedNamedMessages
	
	| method |
	
	method := 'testMethod
	
	self
		assert: methodWithArray
		equals: (PPPPrinter
			format: methodWithArray
			preferences: PPPPrinterTests new preferenceBlock)'.
	self
		assert: method
		equals: (PPPPrinter
			format: method
			preferences: PPPPrinterTests new preferenceBlock)