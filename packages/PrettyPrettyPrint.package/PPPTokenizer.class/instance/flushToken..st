scanning
flushToken: aToken
	aToken
		comments: currentComments;
		whitespaces: currentWhitespaces.
	
	currentComments := OrderedCollection new.
	currentWhitespaces := OrderedCollection new.
	
	^aToken