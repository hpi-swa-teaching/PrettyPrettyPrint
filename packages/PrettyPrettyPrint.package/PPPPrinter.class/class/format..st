as yet unclassified
format: aString
	| tokens printer |
	
	tokens := (PPPTokenizer on: aString)
		skipWhitespace: true;
		yourself.
	
	printer := PPPPrinter new.
	^printer visitMethodNode: (PPPParser new parseTokenStream: (tokens))