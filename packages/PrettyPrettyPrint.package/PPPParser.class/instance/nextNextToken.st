stepping
nextNextToken
	" make sure our cursor is advanced to the most recent position before peeking "
	self nextToken.

	nextNextToken ifNil: [
		| numberOfNewLines |
		numberOfNewLines := 0.
		[	nextNextToken := stream next.
			nextNextToken isNewLine ifTrue: [ numberOfNewLines := numberOfNewLines + 1 ].
			nextNextToken isComment ifTrue: [ commentsBeforeNextNextToken add: nextNextToken content ]]
		doWhileTrue: [ nextNextToken isSeparator ].
		
		emptyLineBeforeNextNextToken := numberOfNewLines > 1 ].

	^nextNextToken