as yet unclassified
testNoNewlineAfterTemporaryDeclaration
	
	| method formattedMethod correctlyFormattedMethod |
	
	method := 'someMessage
	| someTemporary |
	self anotherMessage'.
	
	formattedMethod := PPPPrinter
		format: method
		preferences: [ :profile |
			profile
				newlineAfterTemporaryDeclaration: false;
				newlineAfterSelector: false ].
	
	correctlyFormattedMethod := 
		'someMessage
	| someTemporary |
	self anotherMessage'.
	self assert: correctlyFormattedMethod equals: formattedMethod