testing
isBinaryMessage
	^ self selector first isSpecial and: [ arguments size = 1 ]