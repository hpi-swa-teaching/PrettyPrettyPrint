stepping
nextNextToken
	" make sure our cursor is advanced to the most recent position before peeking "
	self nextToken.

	self nextNextToken ifNil: [ self nextNextToken: stream next ].

	^self nextNextToken