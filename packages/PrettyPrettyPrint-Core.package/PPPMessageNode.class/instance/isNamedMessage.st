testing
isNamedMessage
	
	^ self arguments notEmpty and: [ self isBinaryMessage not ]