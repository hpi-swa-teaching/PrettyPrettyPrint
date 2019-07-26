testing
isBinaryMessage
	^ self selector first isSpecial and: [ self arguments size = 1 ]