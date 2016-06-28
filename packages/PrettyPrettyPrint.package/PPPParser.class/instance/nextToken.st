stepping
nextToken
	nextToken ifNil: [
		| numberOfNewLines |
		numberOfNewLines := 0.
		[	nextToken := stream next.
			nextToken isNewLine ifTrue: [ numberOfNewLines := numberOfNewLines + 1 ]]
			doWhileTrue: [ nextToken isSeparator ].
		
		emptyLineBeforeNextToken := numberOfNewLines > 1 ].
	
	^nextToken