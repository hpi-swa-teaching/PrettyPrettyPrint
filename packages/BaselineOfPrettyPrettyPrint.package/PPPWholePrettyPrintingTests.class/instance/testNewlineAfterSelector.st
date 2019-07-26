as yet unclassified
testNewlineAfterSelector
	
	| method formattedMethod selectorWithNewline selectorWithoutNewline |
	
	method := 
		'	visitMethodNode: aNode | buffer | buffer := WriteStream on: ''''.'.
	
	formattedMethod := PPPPrinter
		format: method
		preferences: [ :profile |
			profile
				newlineAfterSelector: true;
				newlineBeforeReturn: false;
				keepEmptyLines: false ].
	
	selectorWithNewline := 'visitMethodNode: aNode
	
	*'.
	self assert: (selectorWithNewline match: formattedMethod).
	
	formattedMethod := PPPPrinter
		format: method
		preferences: [ :profile |
			profile newlineAfterSelector: false ].
	selectorWithoutNewline := 'visitMethodNode: aNode
	|'.
	self assert: (formattedMethod beginsWith: selectorWithoutNewline)