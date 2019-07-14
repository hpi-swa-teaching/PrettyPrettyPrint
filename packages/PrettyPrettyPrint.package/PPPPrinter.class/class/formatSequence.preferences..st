format
formatSequence: aString preferences: aBlock
	
	| tokens printer abstractSyntaxTree |
	
	tokens := PPPTokenizer on: aString.
	
	printer := PPPPrinter newWithPreferences: aBlock.
	
	abstractSyntaxTree := PPPParser parseSequenceTokenStream: tokens.
	
	PPPPreprocessor processSequenceNode: abstractSyntaxTree.
	
	^printer prettyPrintSequence: abstractSyntaxTree