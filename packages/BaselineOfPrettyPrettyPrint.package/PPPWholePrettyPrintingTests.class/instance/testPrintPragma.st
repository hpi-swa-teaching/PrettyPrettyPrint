as yet unclassified
testPrintPragma
	
	| test |
	
	test := 'test
	<hi val: ''test''>'.
	self
		assert: test
		equals: (PPPPrinter
			format: test
			preferences: PPPPrinterTests new preferenceBlock)