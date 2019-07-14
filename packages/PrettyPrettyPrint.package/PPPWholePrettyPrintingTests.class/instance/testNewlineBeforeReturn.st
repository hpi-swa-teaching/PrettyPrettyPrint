as yet unclassified
testNewlineBeforeReturn
	
	| method formattedMethod newlineWithReturnStatement 
		returnStatementWithoutNewline |
	
	method := '	visitMethodNode: aNode  		^self'.
	
	formattedMethod := PPPPrinter
		format: method
		preferences: [ :profile |
			profile
				newlineBeforeReturn: true;
				newlineAfterSelector: false ].
	newlineWithReturnStatement := '*
*
	^*'.
	self assert: (newlineWithReturnStatement match: formattedMethod).
	
	formattedMethod := PPPPrinter
		format: method
		preferences: PPPPrinterTests new preferenceBlock.
	returnStatementWithoutNewline := 'visitMethodNode: aNode
	^'.
	self assert: (formattedMethod beginsWith: returnStatementWithoutNewline)