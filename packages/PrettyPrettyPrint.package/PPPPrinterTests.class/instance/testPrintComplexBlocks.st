testing
testPrintComplexBlocks
	| string |
	
	string := 'testMethod
	[ buffer nextPut: currentCharacter ] doWhileTrue: [ self classifyCharacter: self step = #binaryOperator ]'.
	
	self assert: string equals: (PPPPrinter format: string preferences: [ :profile | profile newlineAfterSelector: false; dotAfterReturn: false ])