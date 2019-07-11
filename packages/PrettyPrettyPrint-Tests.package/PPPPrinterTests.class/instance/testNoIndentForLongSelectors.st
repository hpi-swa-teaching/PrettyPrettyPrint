testing
testNoIndentForLongSelectors
	
	| method |
	
	method := 
		'demoMessage: firstObject withSecondArgument: secondObject 
andThirdSuperDuperIncrediblyAndUnnecessarilyLonglyDescribedArgument: thirdObject 
andFourthArgument: fourthObject andFifthArgument: fifthObject
	
	self doStuff'.
	self
		assert: method
		equals: (PPPPrinter format: method preferences: self preferenceBlock)