format
format: aString preferences: aBlock 

	| tokens printer abstractSyntaxTree pragmaPreferences |
	
	tokens := PPPTokenizer on: aString.
	
	printer := PPPPrinter new.
	aBlock value: printer profile.
	
	abstractSyntaxTree := PPPParser new parseTokenStream: (tokens).
	pragmaPreferences := PPPPragmaHandler new getPragmaPreferencesFrom: abstractSyntaxTree.
	PPPPreprocessor new visitMethodNode: abstractSyntaxTree.
	self halt.
	self flag: 'We should try to extract this method (since it is very low-level)'.
	(pragmaPreferences at: #ignore ifAbsent: [  ]) = 'True' ifTrue: [
		^ aString ].
	^ printer visitMethodNode: abstractSyntaxTree
	
