as yet unclassified
step
	currentToken := self nextToken.
	nextToken := self nextNextToken.
	nextNextToken := nil.
	emptyLineBeforeNextToken := false.
	
	^currentToken
