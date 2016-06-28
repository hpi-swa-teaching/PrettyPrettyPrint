as yet unclassified
testPrintComplexBlocks
	| string |
	
	string := 'testMethod
	[ buffer nextPut: currentCharacter ] doWhileTrue: [ self classifyCharacter: self step = #binaryOperator ]'.
	
	self assert: string equals: (PPPPrinter format: string)