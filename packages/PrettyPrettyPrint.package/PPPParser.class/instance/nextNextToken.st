as yet unclassified
nextNextToken
	" make sure our cursor is advanced to the most recent position before peeking "
	self nextToken.

	nextNextToken ifNil: [
		[nextNextToken := stream next] doWhileTrue: [ nextNextToken isSeparator ]].

	^nextNextToken