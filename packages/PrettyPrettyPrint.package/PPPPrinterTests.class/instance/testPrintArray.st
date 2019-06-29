testing
testPrintArray

	| string |
	string := 'testMethod
	{ 1. 2. 3 }.
	#(1 ''a'' $c)'.
	
	self assert: string equals: (PPPPrinter format: string preferences: self preferenceBlock).