stepping
step
	self currentToken: self nextToken.
	self nextToken: self nextNextToken.
	self nextNextToken: nil.
	
	self nextToken ifNotNil: [ self currentComments addAll: self nextToken comments ].
	
	^ self currentToken
