as yet unclassified
format: aString preferences: aBlock
	| tokens printer |
	
	tokens := (PPPTokenizer on: aString)
		skipWhitespace: true;
		yourself.
	
	printer := PPPPrinter new.
	aBlock value: printer profile.
	
	^printer visitMethodNode: (PPPParser new parseTokenStream: (tokens))