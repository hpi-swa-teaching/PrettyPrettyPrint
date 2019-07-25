stepping
nextNextToken
	" make sure our cursor is advanced to the most recent position before peeking "
	self nextToken.

	nextNextToken ifNil: [ self nextNextToken: stream next ].

	^nextNextToken