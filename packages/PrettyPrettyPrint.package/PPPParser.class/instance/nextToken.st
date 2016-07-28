stepping
nextToken
	nextToken ifNil: [
		nextToken := stream next.
		currentComments addAll: nextToken comments ].
	
	^nextToken