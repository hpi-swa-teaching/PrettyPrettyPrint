accessing
isNamedMessage
	^arguments size > 0 and: [self isBinaryMessage not]