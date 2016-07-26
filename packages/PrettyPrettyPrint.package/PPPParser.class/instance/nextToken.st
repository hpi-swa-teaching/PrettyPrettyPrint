stepping
nextToken
	nextToken ifNil: [
		| numberOfNewLines |
		numberOfNewLines := 0.
		[	nextToken := stream next.
			nextToken isNewLine ifTrue: [ numberOfNewLines := numberOfNewLines + 1 ].
			nextToken isComment ifTrue: [ commentsBeforeNextToken add: nextToken content ]]
			doWhileTrue: [ nextToken isSeparator ].
		
		emptyLineBeforeNextToken := numberOfNewLines > 1 ].
	
	^nextToken