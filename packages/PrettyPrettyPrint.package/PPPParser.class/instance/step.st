as yet unclassified
step
	currentToken := self nextToken.
	nextToken := nil.
	nextNextToken := nil.
	
	[currentToken isSeparator] whileTrue: [
		currentToken := self nextToken ].
	
	^currentToken