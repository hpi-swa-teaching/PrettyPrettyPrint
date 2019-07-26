as yet unclassified
testReceiverNeedsParentheses
	
	| method formattedMethod |
	
	method := 
		'test (self getSingle: #test of: self) attach: #help; more: #test'.
	
	formattedMethod := PPPPrinter
		format: method
		preferences: [ :profile |
			profile minimalParanthesis: true ].
	self assert: 'test
	
	(self getSingle: #test of: self)
		attach: #help;
		more: #test' equals: 
		formattedMethod