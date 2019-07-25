stepping
nextToken
	nextToken ifNil: [
		nextToken := stream next.
		self currentComments addAll: nextToken comments ].
	
	^nextToken