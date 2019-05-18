testing
testPrintPragma

	| printer test |
	
	printer := PPPPrinter new.
	test := 'test
	<hi val: ''test''>'.
	
	self assert: test equals: (PPPPrinter format: test preferences: [ :profile | profile  newlineAfterSelector: false; 
	dotAfterReturn: false;
	newlineBeforeReturn: false;
	spaceBeforeReturn: false]).