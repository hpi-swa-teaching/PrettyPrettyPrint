stepping
step
	currentToken := self nextToken.
	nextToken := self nextNextToken.
	nextNextToken := nil.
	
	^currentToken
