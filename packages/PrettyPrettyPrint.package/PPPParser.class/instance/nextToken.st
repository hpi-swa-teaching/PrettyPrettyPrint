stepping
nextToken
	nextToken ifNil: [
		self nextToken: self stream next.
		self currentComments addAll: nextToken comments ].
	
	^nextToken