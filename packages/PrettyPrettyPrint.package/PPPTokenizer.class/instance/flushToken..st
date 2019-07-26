scanning
flushToken: aToken
	
	aToken
		comments: self currentComments;
		whitespaces: self currentWhitespaces.
	
	self currentComments: OrderedCollection new.
	self currentWhitespaces: OrderedCollection new.
	
	^ aToken