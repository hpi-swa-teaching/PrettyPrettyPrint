stepping
nextToken
	nextToken ifNil: [ nextToken := stream next ].
	^nextToken