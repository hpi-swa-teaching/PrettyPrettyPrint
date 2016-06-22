as yet unclassified
nextToken
	nextToken ifNil: [
		nextToken := stream next.
		[nextToken isSeparator] whileTrue: [ nextToken := stream next ]].

	^nextToken