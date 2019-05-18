testing
testPrintArray

	| string |
	string := 'testMethod
	{ 1. 2. 3 }.
	#(1 ''a'' $c)'.
	
	self assert: string equals: (PPPPrinter format: string preferences: [ :profile | profile 
	newlineAfterSelector: false; 
	dotAfterReturn: false;
	newlineBeforeReturn: false;
	spaceBeforeReturn: false ]).