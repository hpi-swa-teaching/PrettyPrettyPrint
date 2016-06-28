stepping
step
	currentToken := self nextToken.
	nextToken := self nextNextToken.
	nextNextToken := nil.
	emptyLineBeforeNextToken := emptyLineBeforeNextNextToken.
	emptyLineBeforeNextNextToken := false.
	
	^currentToken
