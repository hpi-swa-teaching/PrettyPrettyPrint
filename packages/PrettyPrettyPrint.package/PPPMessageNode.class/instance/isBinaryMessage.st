accessing
isBinaryMessage
	^selector first isSpecial and: [arguments size = 1]