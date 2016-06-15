as yet unclassified
nextToken
	nextToken ifNil: [
		nextToken := stream next.
		[nextToken tokenType = #separator] whileTrue: [ nextToken := stream next ]].

	^nextToken