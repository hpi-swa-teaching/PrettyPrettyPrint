format
format: aString preferences: aBlock
	| tokens printer |
	
	tokens := PPPTokenizer on: aString.
	
	printer := PPPPrinter new.
	aBlock value: printer profile.
	
	^printer visitMethodNode: (PPPParser new parseTokenStream: (tokens))