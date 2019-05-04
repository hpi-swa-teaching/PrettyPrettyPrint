format
format: aString preferences: aBlock
	|pragmas tokens printer abstractSyntaxTree |
	
	tokens := PPPTokenizer on: aString.
	
	printer := PPPPrinter new.
	aBlock value: printer profile.
	
	abstractSyntaxTree := PPPParser new parseTokenStream: (tokens).	
	
	pragmas := abstractSyntaxTree getAllPragmas.
	Transcript show: pragmas.
	
	^printer visitMethodNode: abstractSyntaxTree