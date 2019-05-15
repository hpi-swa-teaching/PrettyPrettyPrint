testing
testSpaceAroundBinaryOperator
	
	| method formattedMethod operationsWithSpaces operationsWithoutSpaces |
	method := 'someMethod  1+2. 3     +   	4- 5.'.
	
	formattedMethod := PPPPrinter 
		format: method 
		preferences: [:profile | profile spaceAroundBinaryOperator: true].
	operationsWithSpaces := '*1 + 2.*3 + 4 - 5*'.
	self assert: (operationsWithSpaces match: formattedMethod).
	
	formattedMethod := PPPPrinter 
		format: method 
		preferences: [:profile | profile spaceAroundBinaryOperator: false].
	operationsWithoutSpaces := '*1+2.*3+4-5*'.
	self assert: (operationsWithoutSpaces match: formattedMethod)