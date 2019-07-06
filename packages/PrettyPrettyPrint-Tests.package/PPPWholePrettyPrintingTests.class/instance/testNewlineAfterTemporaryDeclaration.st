as yet unclassified
testNewlineAfterTemporaryDeclaration
	
	| method formattedMethod correctlyFormattedMethod |
	
	method := 'someMessage
	| someTemporary | 
	self anotherMessage'.
	
	formattedMethod := PPPPrinter
		format: method
		preferences: [ :profile |
			profile
				newlineAfterTemporaryDeclaration: true;
				newlineAfterSelector: false ].
	
	correctlyFormattedMethod := 
		'someMessage
	| someTemporary |
	
	self anotherMessage'.
	self assert: correctlyFormattedMethod equals: formattedMethod