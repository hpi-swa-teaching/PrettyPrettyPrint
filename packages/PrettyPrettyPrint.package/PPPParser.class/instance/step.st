as yet unclassified
step
	currentToken := self nextToken.
	nextToken := nil.
	nextNextToken := nil.
	
	[ currentToken tokenType = #separator ] whileTrue: [
		currentToken := self nextToken ].
	
	^currentToken