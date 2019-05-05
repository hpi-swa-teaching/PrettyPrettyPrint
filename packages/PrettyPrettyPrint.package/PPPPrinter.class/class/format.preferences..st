format
format: aString preferences: aBlock
	| tokens printer abstractSyntaxTree pragmaPreferences |
	
	tokens := PPPTokenizer on: aString.
	
	printer := PPPPrinter new.
	aBlock value: printer profile.
	
	abstractSyntaxTree := PPPParser new parseTokenStream: (tokens).	
	pragmaPreferences := PPPPragmaHandler new getPragmaPreferencesFrom: abstractSyntaxTree.
	
	 (pragmaPreferences at: #ignore ifAbsent: []) = 'True' ifTrue:[^ aString].
	^printer visitMethodNode: abstractSyntaxTree