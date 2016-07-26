stepping
step
	currentToken := self nextToken.
	nextToken := self nextNextToken.
	nextNextToken := nil.
	emptyLineBeforeNextToken := emptyLineBeforeNextNextToken.
	emptyLineBeforeNextNextToken := false.
	commentsBeforeNextToken := commentsBeforeNextNextToken.
	commentsBeforeNextNextToken := OrderedCollection new.
	
	^currentToken
