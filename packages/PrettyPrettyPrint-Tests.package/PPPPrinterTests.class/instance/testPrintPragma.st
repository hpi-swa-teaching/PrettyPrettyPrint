testing
testPrintPragma
	| printer test |
	
	printer := PPPPrinter new.
	test := 'test
	<hi val: ''test''>'.
	
	self assert: test equals: (PPPPrinter format: test)