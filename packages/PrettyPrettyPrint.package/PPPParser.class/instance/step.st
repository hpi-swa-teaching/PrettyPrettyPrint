stepping
step
	currentToken := self nextToken.
	nextToken := self nextNextToken.
	nextNextToken := nil.
	
	nextToken ifNotNil: [ currentComments addAll: nextToken comments ].
	
	^currentToken
