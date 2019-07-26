format
format: aString preferences: aBlock
	
	| tokens printer abstractSyntaxTree pragmaPreferences |
	
	tokens := PPPTokenizer on: aString.
	
	printer := PPPPrinter newWithPreferences: aBlock.
	
	abstractSyntaxTree := PPPParser parseMethodTokenStream: tokens.
	pragmaPreferences := PPPPragmaHandler
		getPragmaPreferencesFrom: abstractSyntaxTree.
	
	(self methodIgnoredBy: pragmaPreferences) ifTrue: [ ^ aString ].
	
	PPPPreprocessor processMethodNode: abstractSyntaxTree.
	
	^ printer prettyPrintMethod: abstractSyntaxTree